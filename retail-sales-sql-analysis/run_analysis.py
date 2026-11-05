"""Run SQL portfolio queries using Python standard library only."""
from pathlib import Path
import csv
import sqlite3

ROOT = Path(__file__).resolve().parent
connection = sqlite3.connect(":memory:")
connection.execute("""CREATE TABLE sales (
    order_id TEXT PRIMARY KEY, order_date TEXT, region TEXT, channel TEXT,
    product_category TEXT, quantity INTEGER, unit_price_usd REAL,
    discount_pct INTEGER, order_status TEXT)""")
with (ROOT / "data" / "sales.csv").open(newline="", encoding="utf-8") as fh:
    records = list(csv.DictReader(fh))
connection.executemany("INSERT INTO sales VALUES (?,?,?,?,?,?,?,?,?)", [
    (r["order_id"], r["order_date"], r["region"], r["channel"],
     r["product_category"], int(r["quantity"]), float(r["unit_price_usd"]),
     int(r["discount_pct"]), r["order_status"]) for r in records
])
sql = (ROOT / "queries.sql").read_text(encoding="utf-8")
for idx, statement in enumerate(sql.split(";"), start=1):
    if not any(line.lstrip().upper().startswith("SELECT") for line in statement.splitlines()):
        continue
    results = connection.execute(statement)
    print("\nQuery", idx, ":", ", ".join(col[0] for col in results.description))
    for row in results.fetchall():
        print("  ", row)

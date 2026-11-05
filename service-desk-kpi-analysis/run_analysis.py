"""Run SQLite queries on synthetic service requests using standard-library modules."""
from pathlib import Path
import csv
import sqlite3

ROOT = Path(__file__).resolve().parent
connection = sqlite3.connect(":memory:")
connection.execute("""CREATE TABLE requests (
    request_id TEXT PRIMARY KEY, submitted_date TEXT, assigned_team TEXT,
    request_category TEXT, priority TEXT, status TEXT,
    first_response_hours REAL, response_target_hours REAL)""")
with (ROOT / "data" / "requests.csv").open(newline="", encoding="utf-8") as fh:
    records = list(csv.DictReader(fh))
connection.executemany("INSERT INTO requests VALUES (?,?,?,?,?,?,?,?)", [
    (r["request_id"], r["submitted_date"], r["assigned_team"], r["request_category"],
     r["priority"], r["status"],
     None if not r["first_response_hours"] else float(r["first_response_hours"]),
     float(r["response_target_hours"])) for r in records
])
sql = (ROOT / "queries.sql").read_text(encoding="utf-8")
for idx, statement in enumerate(sql.split(";"), start=1):
    if not any(line.lstrip().upper().startswith("SELECT") for line in statement.splitlines()):
        continue
    results = connection.execute(statement)
    print("\nQuery", idx, ":", ", ".join(col[0] for col in results.description))
    for row in results.fetchall():
        print("  ", row)

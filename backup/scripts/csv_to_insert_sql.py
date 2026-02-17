"""
Converte o CSV de contributors para SQL com ON CONFLICT DO NOTHING.
Uso: python backup/scripts/csv_to_insert_sql.py
"""

import csv
import json
import sys

INPUT_CSV = "backup/database/data/query-results-export-2026-02-17_11-27-24.csv"
OUTPUT_SQL = "backup/database/data/import_contributors_diff.sql"

def escape(val):
    if val is None or val == "":
        return "NULL"
    if isinstance(val, str):
        return "'" + val.replace("'", "''") + "'"
    return str(val)

def to_bool(val):
    if val is None or val == "":
        return "NULL"
    return "true" if val.lower() == "true" else "false"

def to_array(val):
    """Convert CSV array format ["a","b"] to PostgreSQL array literal."""
    if not val or val == "":
        return "NULL"
    try:
        items = json.loads(val)
        if not items:
            return "NULL"
        escaped = [i.replace("'", "''") for i in items]
        return "ARRAY[" + ",".join(f"'{i}'" for i in escaped) + "]"
    except Exception:
        return "NULL"

rows = []
with open(INPUT_CSV, newline="", encoding="utf-8") as f:
    reader = csv.DictReader(f, delimiter=";")
    for row in reader:
        rows.append(row)

print(f"Total de rows no CSV: {len(rows)}")

lines = []
lines.append("-- Import contributors — insere apenas os que não existem (por id e email)")
lines.append("-- Gerado automaticamente por csv_to_insert_sql.py")
lines.append("")

for row in rows:
    id_           = escape(row.get("id"))
    name          = escape(row.get("name"))
    email         = escape(row.get("email"))
    location      = escape(row.get("location"))
    region        = escape(row.get("region") or "centro")
    availability  = escape(row.get("availability"))
    can_ship      = to_bool(row.get("can_ship"))
    shipping_carrier = escape(row.get("shipping_carrier"))
    token         = escape(row.get("token"))
    created_at    = escape(row.get("created_at"))
    updated_at    = escape(row.get("updated_at"))
    phone         = escape(row.get("phone"))
    materials     = to_array(row.get("materials"))
    build_volume_ok = to_bool(row.get("build_volume_ok"))
    experience_level = escape(row.get("experience_level") or "intermediate")
    turnaround_time = escape(row.get("turnaround_time"))
    willing_to_collaborate = to_bool(row.get("willing_to_collaborate"))
    printer_models = to_array(row.get("printer_models"))
    build_plate_size = escape(row.get("build_plate_size"))
    password_hash = escape(row.get("password_hash"))

    sql = f"""INSERT INTO contributors (
  id, name, email, location, region, availability, can_ship, shipping_carrier,
  token, created_at, updated_at, phone, materials, build_volume_ok,
  experience_level, turnaround_time, willing_to_collaborate, printer_models,
  build_plate_size, password_hash
) VALUES (
  {id_}, {name}, {email}, {location}, {region}, {availability}, {can_ship}, {shipping_carrier},
  {token}, {created_at}, {updated_at}, {phone}, {materials}, {build_volume_ok},
  {experience_level}, {turnaround_time}, {willing_to_collaborate}, {printer_models},
  {build_plate_size}, {password_hash}
)
ON CONFLICT (id) DO NOTHING;"""
    lines.append(sql)

with open(OUTPUT_SQL, "w", encoding="utf-8") as f:
    f.write("\n".join(lines))

print(f"SQL gerado em: {OUTPUT_SQL}")
print(f"Total de INSERT statements: {len(rows)}")

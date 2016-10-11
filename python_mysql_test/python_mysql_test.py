#!/usr/bin/env python
import MySQLdb

db = MySQLdb.connect("localhost", "root", "zzy1203", "sys")

cursor = db.cursor()

cursor.execute("SELECT * from host_summary")

data = cursor.fetchall()

print data

db.close()
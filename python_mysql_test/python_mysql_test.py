#!/usr/bin/env python




import MySQLdb

db = MySQLdb.connect("localhost", "root", "zzy1203", "mysql")

cursor = db.cursor()

cursor.execute("select host,user from user")

data = cursor.fetchall()

print data

db.close()
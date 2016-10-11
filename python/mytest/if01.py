#!/usr/bin/env python
name=input("enter a number")
print name
print type(name)


na=raw_input("enter a number :")
print type(na)
print "the number is :",int(na)
if int(na)>0:
	print "the number is bigger."
elif int(na)<0:
	print "the number is little."
else:
	print "equal zero."
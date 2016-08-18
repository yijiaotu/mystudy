#!/usr/bin/env python
words=['this','is','a ','bird','people']
for word in words:
	#print word
	print word,
print "\n---------------------\n"
for x in xrange(1,10):
	print x,



d={'x':1,'y':2,'z':3}
for key,value in d.items():
	print key,'=>',value


names=['anne','beth','geogr']
age=[1,2,3]

for i in range(len(names)):
	print names[i],'=>',age[i]
	

print zip(names,age)


for name,age in zip(names,age):
	print name,'is',age,'years old.'


print zip(range(5),xrange(100))


from math import sqrt
for n in range(99,0,-1):
	root=sqrt(n)
	if  root == int(root):
		print n,
		#break
print "\n"
print range(0,19,2)


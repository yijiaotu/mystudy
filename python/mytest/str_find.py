#!/usr/bin/env python 
print 'with a moo-moo here.'.find('moo')

title="Monty Python's Flying Circus."
print title.find('Monty')

print title.find('Python')

print title.find('Flying')

if(title.find('Zirquss')):
	print "Not found."

subject = '$$$ Get rich Now.$$$'
print subject.find('$$$')

if (subject.find('$$$') != -1 ):
	print "FOUND.!"
else:
	print "Not FOUND"


seq=['1','2','3','4','5']
seq='+'
print seq.join(seq)

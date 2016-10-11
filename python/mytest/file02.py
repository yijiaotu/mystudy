#!/usr/bin/env python
#coding=utf-8

import os,tempfile

print 'Building a filename with PID:'

filename='E:\python\.%s.txt' % os.getpid()

temp = open(filename,'w+b')

try:
	print 'temp:'
	print '	',temp
	print 'temp.name:'
	print '	',temp.name
finally:
	temp.close()
	os.remove(filename)

print 

print 'TemporaryFile:'
temp = tempfile.TemporaryFile()

try:
		print 'temp:'
		print '	',temp
		print 'temp name:'
		print '	',temp.name
finally:
	temp.close()


with tempfile.TemporaryFile() as temp:
	temp.write('some data')
	temp.seek(0)
	print  temp.read()

print '**'*50

with tempfile.TemporaryFile(mode='w+t') as f:
	f.writelines(['first\n','second\n'])
	f.seek(0)

	for line in f:
		print line.rstrip()



with tempfile.NamedTemporaryFile() as temp:
	print 'temp:'
	print  '	',temp
	print 'temp.name:'
	print '	',temp.name
	print 'Exists after close:',os.path.exists(temp.name)


directory_name=tempfile.mkdtemp()
print "directory_name:",directory_name
os.removedirs(directory_name)


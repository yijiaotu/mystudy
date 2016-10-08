#!/usr/bin/env python
#coding=utf-8

name=list('perl')
print name

name[2:]=list('ar&python')

print name

numbers=[1,5]
numbers[1:1]=[2,3,4]
print numbers

numbers[1:4]=[]
print numbers
print numbers[0]

lst=[1,2,3]
lst.append(4)

print lst

print ['to','be','to'].count('to')

a = [1,2,3]
b = [4,5,6]
a.extend(b)
print a,b
a[len(a):] = b
print a
kn=['we','aa','the','aa','vv','cc','dd']
print kn.index('we')
#print kn.index('ee')
print kn[0]
numbers=[0,10,1,2,3,4,5,6]
numbers.insert(3,'four')
print numbers
x=[1,2,3]
x.pop()
print x
x=['to','aa','vv','cc','dd','aa']
x.remove('aa')
print x
a=[1,2,3]
a.reverse()
print a
b=['x','y','z']
b.reverse()
print b

print list(reversed(x))

print "cmp(42,11) =>",cmp(42,11)

print 'cmp(42,42) =>',cmp(42,42)

print 'cmp(42,51) =>',cmp(42,51)

x=['aaddd','aaxxasa','dqadascacxasca','dxasddacccccccccccccc']
x.sort(key=len)
#list(reversed(x)) 
print x

x=[4,6,2,1,7,9]
x.sort(reverse=False)
print x

print ('% 5d' % 10) + '\n' + ('% 5d' % -10)


print 'With a moo-moo here. and a moo-moo there'.find('moo')

title="Monty Python's  Flying circus."
print title.find('Monty')
print title.find('Python')
seq=['1','2','3','34','5','4']
seq1='--'
print seq1.join(seq)

dirs=' ','usr','bin','env'
seq='/'
print seq.join(dirs)

a='This is a test,that is a dog.'
print a.replace('is','eez')

print '1+2+3+4+5'.split('+')
print '/usr/bin/env'.split('/')

from string import maketrans
table = maketrans('cs','kz')
print len(table)

phonebook={'alice':'1234','zzy':'8888'}
print phonebook
items=[('name','Gumby'),('age',423)]
d=dict(items)
print len(d)
print d
print d['name']
print d['age']
d['age']=9999
print d
if ('name' in d ):
	print "ture"


template = '''<html>
<head><title>%(title)s</title></head>
<body>
<h1>%(title)s</h1>
<p>%(text)s</p>
</body>
</html>
'''

data={'title':'My Home Page','text':'Wecome to my home page.'}

print template % data

d = {}
d['name'] = 'Gumby'
d['age']=99
print d

retrun_value=d.clear()

print d
print retrun_value

print {}.fromkeys(['name','age'])
print {}.fromkeys(['name','age'],'unknown')

from copy import deepcopy

d={}

d['names']=['Alfred','Bertrand']
c=d.copy()
dc=deepcopy(d)
d['names'].append('clive')
print c

print dc
print d.get('names')
print d.get('sex','N/A')

d={'title':'python web site','url':'http://www.python.org','spam':0}
print d.items()

it=d.iteritems()
print it
for i in it:
	print i,
print '------------'
print d.keys()
ik=d.iterkeys()
print ik
n=0

for iik in ik:
	n=n+1
	print iik,
print n

d={'x':1,'y':2}
d.pop('x')
print d


d={'title':'python web site','url':'http://www.python.org','changed':'2008'}
x={'title':'python with scarpy data'}
d.update(x)
print d 


names=['anne','beth','feir','damon']
ages=['1','2','3','4']

for i in range(len(names)):
	print names[i] ,'is' ,ages[i],'years old'



def fibs(num):
	result=[0,1]
	for i in range(num-2):
		result.append(result[-2]+result[-1])
	return result

print fibs(10)

def print_params(title,*params):
	print title
	for i in params:
		print i,

print_params('python test',1,2,3,"let's go")


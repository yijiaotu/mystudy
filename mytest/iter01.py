#!/usr/bin/env python
#coding=utf-8
from itertools import *
for i in chain([1,2,3],['a','b','c']):
	print i
print 

for i in izip([1,2,3],['a','b','c']):
	print i

from itertools import *
print 'Stop at 5:'

for i in islice(count(),5):
	print i,
print "\n"

print 'Start at 5,Stop at 10:'

for  i in islice(count(),5,10):
	print i,
print "\n"

for i in imap(lambda x:2*x ,xrange(5)):
	print i

for i in imap(lambda x,y:(x,y,x*y),xrange(5),xrange(5,10)):
	print '%d * %d =%d' % i

"""
lambda 冒号前面是参数，后面是返回值，也有前面是空的，直接是返回值
"""
add=lambda x,y:x+y

print add(1,2)


add2=lambda x,y=10:x+y

print add2(1,2)

for i in izip(count(),['a','v','c']):
	print i
print "----------------------------"

"""
count()函数返回一个迭代器，能够无限地生成连续整数，第一个数可以作为参数传入，默认是0
"""

for i in izip(xrange(7),cycle(['a','b','c'])):
	print i
"""
cycle()函数返回一个迭代器，它会无限地重复给定的参数内容。由于必须记住输入迭代器的全部内容，
因此如果这个迭代器很长，可能会耗费大量的内存
"""
for i in repeat('over-and-over',5):
	print i

for i ,s in izip(count(),repeat('over-and-over',5)):
	print i,s 

for i in imap(lambda x,y:(x,y,x*y),repeat(2),xrange(5)):

	print '%d*%d=%d' % i


def should_drop(x):
	print "Testing:",x
	return (x<1)

for i in dropwhile(should_drop,[-1,0,1,2,-2]):
	print "yielding:",i

print "\n"
"""
dropwhile并不会过滤输入的每一个元素，第一次条件为flase之后，输入中所有余下的元素都会返回。
"""

def should_take(x):
	print "Testing:",x
	return (x<2)

for  i in takewhile(should_take,[-1,0,1,2,-2]):
	print "yielding:",i

"""
takewhile返回一个迭代器，这个迭代器返回输入迭代器中保证测试条件为true的元素，
一旦返回false，takewhileiu会停止处理输入。
"""
print "\n"
def check_item(x):
	print "Testing:",x
	return (x<1)

for i in ifilter(check_item,[-1,0,1,2,-2]):
	print "yielding:",i
"""
ifilter只返回测试条件为true的元素。在返回之前，对每一个元素都会进行测试。

"""
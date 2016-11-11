#!/usr/bin/env python
#coding=utf-8

import  collections
obj=collections.Counter("bcakjbnckjanlababckla")
print (obj)
print (obj.most_common(3))
sorted(obj)
print (obj)

dic=collections.defaultdict(list)
dic['k1']='c1'
print (dic)

d=collections.deque()
d.append(1)
d.append(2)
d.append(6)
print (d)

d.appendleft(4)
print(d)
print (d.count(5))


d.appendleft({'a':1,'b':2,'c':3})
print (d)


d.extend({'d':22,'ff':90,'ee':88})
print(d)

import  copy
a1=1
print(id(a1))

a2=1
print (id(a2))

a3=copy.copy(a1)
print (id(a3))

a4=copy.deepcopy(a3)
print (id(a4))


def show(*keys):
    sum=0
    for i in keys:
        sum=sum+i
    print (sum)



show(1,2,3,4,5)


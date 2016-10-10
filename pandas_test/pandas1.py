#!/usr/bin/env python
from pandas import Series,DataFrame
import  pandas as  pd

obj = Series([4,2,3,-9])
print obj
print obj.values
print obj.index
obj2=Series([1,3,4,0],index=['d','c','a','z'])
print obj2
print obj2.values
print obj2['a']
print obj2[obj2>1]
print obj2*2
print 'd' in obj2

data = {'state':['Ohio','Ohio','Ohio','Nevda','Nevda'],
        'year':[2000,2001,2002,2001,2003],
        'pop':[1.5,1.7,3.6,2.4,2.9]}

frame = DataFrame(data,columns=['year','state','pop'])

print frame

frame2 = DataFrame(data,columns=['year','state','pop','dept'],index=['one','two','three','four','five'])
print frame2

print "frame2.columns is ",frame2.columns

#!/usr/bin/env python
class Foobar:
    def __init__(self,value=42):
        self.somevar=value

f = Foobar()

print f.somevar

class A:
    def hello(self):
        print "hello,I'm A."
class B(A):
   def hello(self):
       print "hello,I'm B."

a=A()
b=B()

print a.hello()
print b.hello()

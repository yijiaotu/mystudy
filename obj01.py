#!/usr/bin/env python

class Person:
	def setName(self,name):
		self.name=name
	def getName(self):
		return self.name
	def greet(self):
		print "hello ,world! i' %s" %self.name

foo=Person()
foo.setName('zzy')
foo.greet()


class FooBar(object):
	def __init__(self,value=42):
		self.somevar = value



f = FooBar()
print f.somevar


b=FooBar('this is a argu.')

print b.somevar

class A:
	def  hello(self):
		print "I'm A "

class B(A):
	def hello(self):
		print "I'm B"

a=A()
b=B()
a.hello()

b.hello()


class Bird:
	def __init__(self):
		self.hungry = True
	def eat(self):
		if self.hungry:
			print "AHHH...."
			self.hungry = False

		else:
			print "no,thanks."

b=Bird()
b.eat()
b.eat()

class SongBird(Bird):
	def __init__(self):
		Bird.__init__(self)
		self.sound="Squawk@@@--"
		
	def sing(self):

		print self.sound


songbird=SongBird()
songbird.sing()
songbird.eat()


class  Fibs:
	def __init__(self):
		self.a=0
		self.b=1
	def next(self):
		self.a,self.b=self.b,self.a+self.b
		return self.a

	def __iter__(self):
		return self



fibs=Fibs()

for f  in fibs:
	if  f > 1000:
		print f
		break

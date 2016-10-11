#!/usr/bin/env python
#coding=utf-8

'''
urlparse()函数的返回值是一个对象，相当于一个包含6个元素的元组，通过元组得到的部分分别是:
机制，网络位置，路径，路径段参数（有一个分好与路径分开），查询，以及片段
'''
from urlparse import urlparse

url='http://netloc.com/path;param?query=arg#frag'

parsed=urlparse(url)

print parsed

url ='http://user:pwd@NetLoc:80/path;param?query=arg#frag'
parsed = urlparse(url)

print 'scheme 	:',parsed.scheme
print 'netloc 	:',parsed.netloc
print 'path 	:',parsed.path
print 'params 	:',parsed.params
print 'query 	:',parsed.query
print 'fragment :',parsed.fragment
print 'username :',parsed.username
print 'password :',parsed.password
print 'hostname :',parsed.hostname
print 'port 	:',parsed.port

#把分解的URL的各个部分组装起来，geturl.
print 'Parsed:~~~',parsed.geturl()


from urlparse import urldefrag

original='http://netloc/path;param?query=arg#frag'
print 'original:',original
url,fragment= urldefrag(original)
print 'url 	:',url
print 'fragment 	',fragment


from urlparse import urlparse,urlunparse

ori = 'http://netloc/path;param?query=arg#frag'

print 'ORI 	:',ori
parsed=urlparse(ori)
print 'Parsed:',type(parsed),parsed
t=parsed[:]

print 'TUPLE :',type(t),t
print 'NEW 	:',urlunparse(t)


#如果URL包含多余的部分，重新构造URL可能会将其去除。
print "---------------urlunparsed-------------"
original='http://netloc/path;?#'
print 'ORIG 	:',original

parsed = urlparse(original)

print 'PARSED 	:',type(parsed),parsed

t=parsed[:]
print 'TUPLE :',type(t),t

print 'NEW :',urlunparse(t)


#urljoin()方法：可以由相对片段构造绝对URL
from urlparse import urljoin

print "----------urljoin-----------"

print urljoin('http://www.example.com/path/file.html','anotherfile.html')
print urljoin('http://www.example.com/path/file.html','../anotherfile.html')

print urljoin('http://www.example.com/path/','/subpath/file.html')
print urljoin('http://www.example.com/path/','subpath/file.html')
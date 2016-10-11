#!/usr/bin/env python
#coding=utf-8
import urllib


query_args={'q':'query string','foo':'bar'}
encoded_args = urllib.urlencode(query_args)

print 'Encoded:',encoded_args

url='http://localhost/?'+encoded_args

print url

#print urllib.urlopen(url).read()

'''
要使用变量的不同出现向查询串传入一个值序列，需要在调用urlencode()时将doseq设置为true.

'''


query_args={'foo':['foo1','foo2']}

print 'single 	:',urllib.urlencode(query_args)
print 'Sequence:',urllib.urlencode(query_args,doseq=True)



'''
在服务器端，对url解析时，会对特殊字符加引号，要对本地特殊字符加引号从而得到字符串的安全版本，可以使用quote()或者quote_plus()函数。
'''

url='http://localhost:8080/~dhellmann/'
print 'urlencode() :',urllib.urlencode({'url':url})
print 'quote() 	:',urllib.quote(url)
print 'quote_plus() :',urllib.quote_plus(url)

print 'unquote() 	:',urllib.unquote('http%3A//localhost%3A8080/%7Edhellmann/')
print 'unquote_plus() 	:',urllib.unquote_plus('http%3A%2F%2Flocalhost%3A8080%2F%7Edhellmann%2F')



#!/usr/bin/env python
#coding=utf-8

import urllib2

response = urllib2.urlopen('http://localhost')

print 'RESPONSE 	:',response
print 'URL 	:',response.geturl()
print 


headers=response.info()
print 'DATE 	:',headers['date']
print 'Server:',headers['Server']
print 'content:',headers['Content-Type']
print 'HEADERS :'
print '------------------'
print headers

data = response.read()
print 'LENGTH 	:',len(data)
print 'DATA 	:'
print '-----------------'
print data

#!/usr/bin/env python
#coding=utf-8
import os 
from urllib import pathname2url,url2pathname

print '==Default=='
path ='/a/b/c'
print 'original:',path
print 'URL 	:',pathname2url(path)
print 'Path 	:',url2pathname('/d/e/f')
print 

from nturl2path import pathname2url,url2pathname

print "==windows,without drive letter =="
path = r'\a\b\c'
print 'original:',path
print 'URL 	:',pathname2url(path)
print 'Path 	:',url2pathname('/d/e/f')
print 


print "===windows ,with drive letter ===="

path =r'c:\a\b\c'
print  'original :',path
print 'URL 	:',pathname2url(path)
print 'Path :',url2pathname('/d/e/f')

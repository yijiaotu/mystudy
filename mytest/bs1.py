#!/usr/bin/env python
#coding=utf-8
from bs4 import BeautifulSoup

soup=BeautifulSoup(open("index.html"),"html5lib")
"""
for link in soup.find_all("a"):
    print link,
    print "\n"

print(soup.prettify())
"""
print "soup.title:",soup.title

print "soup.title.name:",soup.title.name

print "soup.title.string:",soup.title.string

print "soup.a:",soup.a

print "soup.find_all('a'):",soup.find_all('a')

print soup.find(href="software/")

for link in soup.find_all('a'):
    print (link.get('href'))


print "从文档中获取内容~~~"
print (soup.get_text())


#!/usr/bin/env python
#coding=utf-8
from  bs4  import  BeautifulSoup
soup = BeautifulSoup('<b class="boldest">Extremely bold</b>',"html5lib")
tag = soup.b
print type(tag)
print tag.name
tag.name="blockquote"
print tag
print tag['class']
print tag.attrs

tag['class']='verygood'
tag['id']=1
print tag

del tag['class']
del tag['id']
print tag

#print tag['class']
print (tag.get('class'))

css_soup = BeautifulSoup('<p class="body strikeout"></p>',"html5lib")
print css_soup.p['class']

css_soup = BeautifulSoup('<p class="body"></p>',"html5lib")
print css_soup.p['class']

print tag.string

print type(tag.string)

unicode_string = unicode(tag.string)
print unicode_string

type(unicode_string)



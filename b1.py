#!/usr/bin/env python
#coding=utf-8

# noinspection PyInterpreter
html_doc = """
<html><head><title>The Dormouse's story</title></head>

<p class="title"><b>The Dormouse's story</b></p>

<p class="story">Once upon a time there were three little sisters; and their names were
<a href="http://example.com/elsie" class="sister" id="link1">Elsie</a>,
<a href="http://example.com/lacie" class="sister" id="link2">Lacie</a> and
<a href="http://example.com/tillie" class="sister" id="link3">Tillie</a>;
and they lived at the bottom of a well.</p>

<p class="story">...</p>
"""
from bs4 import BeautifulSoup

soup = BeautifulSoup(html_doc,"html5lib")
print soup.head

print soup.title

print soup.body.b
print soup.a
print soup.find_all('a')

head_tag = soup.head
print "head_tag----",head_tag
print head_tag.contents[0].contents

print head_tag.contents

title_tag=head_tag.contents[0]

print title_tag
print title_tag.contents

print "contents->", head_tag.contents

for child in head_tag.descendants:
    print (child)

print len(list(soup.children))
print len(list(soup.descendants))

#!/usr/bin/env python
#coding=utf-8
import string
s="the quick brown fox jumped over the lazy dog."
print s
print string.capwords(s)

leet=string.maketrans('abcdefg','1234567')

print s.translate(leet)

values = {'var':'foo'}

t=string.Template("""
variable 	:$var
Escape 		:$$
variable in text:${var}iable
	""")

print 'Template:',t.substitute(values)


s="""
variable 	:%(var)s
Escape 		:%%
variable in text: %(var)siable
"""
print 'Infomation:',s % values


template_text="""
Delimiter : %%
Replaced  : %withunderscore
Ignored   :%notunderscored
"""

d = {
	'withunderscore':'replaced',
	'notunderscored':'not replaced',
}


class MyTemplate(string.Template):
	delimiter= '%'
	#idpattern='[a-z]+_[a-z]+'
	#这里标识变量必须包含下划线模式。
	idpattern='[a-z]+'
t = MyTemplate(template_text)

print "Modified ID pattern."
print t.safe_substitute(d)
#!/usr/bin/env python
import re
pattern ='this'
text="Does this text match the pattern?"
match = re.search(pattern,text)
s=match.start()
e=match.end()

print 'Found "%s" \n in "%s"\n from %d to %d ("%s")' % 	(match.re.pattern,match.string,s,e,text[s:e])


text='abbbbaaabbbaaaa'
pattern='ab'
"""
for match in re.findall(pattern,text):
	print 'Found "%s" in %s.' % (match,text)
"""

for  match in re.finditer(pattern,text):
	s=match.start()
	e=match.end()
	print 'Found "%s" at %d:%d' %(text[s:e],s,e)
	
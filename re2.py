#!/usr/bin/env python
import re
def test_pattern(text,patterns=[]):
	for pattern,desc in patterns:
		print 'Pattern %r (%s)\n'% (pattern,desc)
		print '	%r' % text
		for match in re.finditer(pattern,text):
			s = match.start()
			e = match.end()
			substr = text[s:e]
			n_backslashes = text[:s].count('\\')
			prefix='.'*(s+n_backslashes)
			print '	%s%r'%(prefix,substr)
		print
	return

if __name__=='__main__':
	test_pattern('abbbaaabbbbaaaaaa',
		[
		('ab*','a followed by zero or more b'),
		('ab+','a followed by one or more b'),
		('ab?','a followed by zero or one  b'),
		('ab{3}','a followed by three b'),
		('ab{2,3}','a followed by two or three b'),
		('[ab]','a followed by two or three b'),
		('[^-. ]+','sequences without -,.,or space.'),


		])
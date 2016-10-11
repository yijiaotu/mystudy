#!/usr/bin/env python

people={
	'Alice':{'phone':'132','addr':'zhejiang hangzhou'},
	'huzhou':{'phone':'133','addr':'zhejiang huzhou'},
	'nanjing':{'phone':'134','addr':'jiangsu nanjing'},
	'jiangsu':{'phone':'135','addr':'guangdong guangzhou'},
	'beijing':{'phone':'136','addr':'beijing beijing'},

}

labels = {
	'phone':'phone numbers',
	'addr':'address'
}


name = raw_input('Name:')

key = raw_input('key:phone/addr?')

if  name in people: print "%s's %s is %s ." % (name,labels[key],people[name][key])
#!/usr/bin/env python
def print_params(*params):
	print params


print_params(1,2,3,4);
print_params('test!')

def print_params_2(title,*params):
	print title
	print params


print_params_2('title!!!')
print_params_2('title11','test--','test22!!')

def print_params_3(**params):
	print params


print_params_3(x=1,y=2)


def print_params_4(x,y,z=4,*pospar,**keypar):
	print x,y,z
	print pospar
	print keypar

print_params_4(1,2,3,4,5,5,6,foo=1,bar=2)

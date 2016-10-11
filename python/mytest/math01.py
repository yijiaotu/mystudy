#!/usr/bin/env python
import decimal
fmt='{0:<25}{1:<25}'
print fmt.format('Input','Output')
print fmt.format('-'*25,'-'*25)
print fmt.format(5,decimal.Decimal(5))

print fmt.format('3.14',decimal.Decimal('3.14'))


for value in ['Infinity','NaN','0']:
	print decimal.Decimal(value),decimal.Decimal('-'+value)

print 
print decimal.Decimal('Infinity')+1
print decimal.Decimal('-Infinity')+1

print decimal.Decimal('NaN')== decimal.Decimal('Infinity')

import pprint

context=decimal.getcontext()

print 'Emax 	=',context.Emax
print 'Emin 	=',context.Emin
#!/usr/bin/env python
import dns.resolver

answers = dns.resolver.query('baidu.com', 'A')
for rdata in answers.response.answer:
    print rdata
    for i in rdata.items:
       print i.address
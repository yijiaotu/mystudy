#!/usr/bin/env python
#coding=utf-8

import  json
s='''{"code":0,"data":{"country":"\u4e2d\u56fd","country_id":"CN","area":"\u534e\u4e1c",
                  "area_id":"300000","region":"\u6d59\u6c5f\u7701","region_id":"330000",
                  "city":"\u676d\u5dde\u5e02","city_id":"330100",
                  "county":"","county_id":"-1",
                  "isp":"\u7535\u4fe1","isp_id":"100017",
                  "ip":"8.8.8.8"}}

'''
datas=s.decode("unicode-escape")

d1=json.loads(datas)

print "地址是：",d1['data']['isp'],d1['data']['region'],d1['data']['city'],d1['data']['isp']
print "IP地址是:",d1['data']['ip']



obj = [[1,2,3],123,123.123,'abc',{'key1':(1,2,3),'key2':(4,5,6)}]
encodedjson=json.dumps(obj)
print repr(encodedjson)
print encodedjson

decodedjson = json.loads(encodedjson)
print type(decodedjson)
print "decodedjson[4]['key1'] is ",decodedjson[4]['key1']
print "\n"
print "decodedjson is ",decodedjson

data1 = {'b':789,'c':456,'a':12}
data2 = {'a':12,'c':456,'b':789}
d1=json.dumps(data1,sort_keys=True)
d2=json.dumps(data2)
d3=json.dumps(data2,sort_keys=True)
print "d1 is ",d1
print "d2 is ",d2
print "d3 is ",d3
print d1 == d2
print d1==d3

d4 = json.dumps(data2,sort_keys=True,indent=4)
print d4


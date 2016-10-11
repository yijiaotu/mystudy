#!/usr/bin/env python
#-*-coding:utf-8-*-


a='''{"code":0,"data":{"country":"\u4e2d\u56fd","country_id":"CN","area":"\u534e\u4e1c",
                  "area_id":"300000","region":"\u6d59\u6c5f\u7701","region_id":"330000",
                  "city":"\u676d\u5dde\u5e02","city_id":"330100",
                  "county":"","county_id":"-1",
                  "isp":"\u7535\u4fe1","isp_id":"100017",
                  "ip":"115.238.43.228"}}}
'''

aa=a.decode("unicode-escape")
print aa


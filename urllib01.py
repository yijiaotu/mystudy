#!/usr/bin/env python
#coding=utf-8
'''
urllib模块为网络资源访问提供一个简单的接口，它还包括一些函数用于对参数编码和加引号，以便通过HTTP传递到一个服务器。
urlretrieve()的参数包含一个URL，存放数据的一个临时文件夹和一个报告下载进度的函数
如果URL指示一个表单，要求提交数据，那么urlretrieve()还要有一个参数表示要传递的数据。
如果没给定文件名，urlretrieve（）会创建一个临时文件，调用程序可以直接删除这个文件，或者将这个文件作为缓存，使用urlcleanup()将其删除。
'''
import urllib
import os

def reporthook(blocks_read,block_size,total_size):
	'''
	blocks_read到目前为止读的块数，块的大小，以及下载资源的字节数
	'''
	if not blocks_read:
		print "Connection opened."
		return

	if total_size<0:
		print "Read %d blocks (%d bytes)" %(blocks_read,blocks_read*block_size)
	else:
		amount_read=blocks_read*block_size
		print 'Read %d blocks, or %d/%d' % (blocks_read,amount_read,total_size)
	return


try:
	filename,msg=urllib.urlretrieve('https://www.python.org/',reporthook=reporthook)
	print 
	print 'File:',filename
	print 'Headers:'
	print msg
	print 'File exists before cleanup:',os.path.exists(filename)
finally:
	urllib.urlcleanup()
	print 'file still exists:',os.path.exists(filename)




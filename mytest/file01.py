#!/usr/bin/env python
#coding=utf-8
import os.path
for path in ['/one/two/three',
			'/one/two/three/',
			'/',
			'.',
			'']:
	print  '%15s : %s'%(path,os.path.split(path))
	print  '%15s : %s'%(path,os.path.basename(path))
	print '%15s : %s '%(path,os.path.dirname(path))
	print  '_'*50



for path in ['filename.txt','filename',
			'/path/to/filename.txt',
			'/',
			'',
			'my_archive.tar.gz',
			'no_extension.',
]:
	print '%21s :'%path,os.path.splitext(path)
	print '%21s : '%path,os.path.commonprefix(path)
	print '-'*12


for parts in [('one','two','three'),('\\','one','two','three'),('/one','/two','/three'),]:
	print parts,':',os.path.join(*parts)

for path in ['one//two//three','one/./two/./three','one/../alt/two/three',]:
	print '%20s:%s' % (path,os.path.normpath(path))


os.chdir('e:\python')

for path in [',','..','./one/two/three','../one/two/three',]:
	print '%17s : "%s" ' %(path,os.path.abspath(path))


import time

print "file 	:",__file__

print 'Access time 	:',time.ctime(os.path.getatime(__file__))

print 'Modified time :',time.ctime(os.path.getmtime(__file__))

print 'change time :',time.ctime(os.path.getctime(__file__))

print 'Size 	:',os.path.getsize(__file__)

print '--'*25
filenames=[__file__,os.path.dirname(__file__),'/','./broken_link',]

for file in filenames:
	print 'File 	:',file
	print 'Absolute 	:',os.path.isabs(file)
	print 'Is file ?	:',os.path.isfile(file)
	print 'Is Dir? 		:',os.path.isdir(file)
	print 'Is link? 	:',os.path.islink(file)
	print 'Mountpoint?	:',os.path.ismount(file)
	print 'Exist? 		:',os.path.exists(file)
	print 'Link Exist? 	:',os.path.lexists(file)
	print

'''
os.path.abspath(path) #返回绝对路径
os.path.basename(path) #返回文件名
os.path.commonprefix(list) #返回list(多个路径)中，所有path共有的最长的路径。
os.path.dirname(path) #返回文件路径
os.path.exists(path)  #路径存在则返回True,路径损坏返回False
os.path.lexists  #路径存在则返回True,路径损坏也返回True
os.path.expanduser(path)  #把path中包含的"~"和"~user"转换成用户目录
os.path.expandvars(path)  #根据环境变量的值替换path中包含的”$name”和”${name}”
os.path.getatime(path)  #返回最后一次进入此path的时间。
os.path.getmtime(path)  #返回在此path下最后一次修改的时间。
os.path.getctime(path)  #返回创建path文件的时间
os.path.getsize(path)  #返回文件大小，如果文件不存在就返回错误
os.path.isabs(path)  #判断是否为绝对路径
os.path.isfile(path)  #判断路径是否为文件
os.path.isdir(path)  #判断路径是否为目录
os.path.islink(path)  #判断路径是否为链接
os.path.ismount(path)  #判断路径是否为挂载点（）
os.path.join(path1[, path2[, ...]])  #把目录和文件名合成一个路径
os.path.normcase(path)  #转换path的大小写和斜杠
os.path.normpath(path)  #规范path字符串形式
os.path.realpath(path)  #返回path的真实路径
os.path.relpath(path[, start])  #从start开始计算相对路径
os.path.samefile(path1, path2)  #判断目录或文件是否相同
os.path.sameopenfile(fp1, fp2)  #判断fp1和fp2是否指向同一文件
os.path.samestat(stat1, stat2)  #判断stat tuple stat1和stat2是否指向同一个文件
os.path.split(path)  #把路径分割成dirname和basename，返回一个元组
os.path.splitdrive(path)   #一般用在windows下，返回驱动器名和路径组成的元组
os.path.splitext(path)  #分割路径，返回路径名和文件扩展名的元组
os.path.splitunc(path)  #把路径分割为加载点与文件
os.path.walk(path, visit, arg)  #遍历path，进入每个目录都调用visit函数，visit函数必须有
3个参数(arg, dirname, names)，dirname表示当前目录的目录名，names代表当前目录下的所有
文件名，args则为walk的第三个参数
os.path.supports_unicode_filenames  #设置是否支持unicode路径名
'''

def visit(arg,dirname,names):
	print arg,dirname,'----'

	for name in names:

		subname = os.path.join(dirname,name)
		
		print subname
		
		if os.path.isdir(subname):
			print '%s/' % name
		else:
			print ' %s' % name

		print 

if not os.path.exists('example'):
	os.mkdir('example')

if not os.path.exists('example/one'):
	os.mkdir('example/one')

with open('example/one/file.txt','wt') as f :
	f.write('conntents')


with open('example/two.txt','wt') as f :
	f.write('conntents')

os.path.walk('example',visit,'user data')
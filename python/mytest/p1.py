#!/usr/bin/env python

import psutil

print psutil.cpu_times()
print "psutil.cpu_count is :", psutil.cpu_count()
print "psutil.cpu_times(percpu=True)",psutil.cpu_times(percpu=True)

for x in range(psutil.cpu_count()):
    print psutil.cpu_percent(interval=1,percpu=True)

print "psutil.cpu_stats",psutil.cpu_stats()

for x in range(4):
    print psutil.cpu_percent(interval=1,percpu=True)

print "virtual_memory is",psutil.virtual_memory()
print "swap_memory is ",psutil.swap_memory()
print "psutil.user is ",psutil.users()


print "psutil.disk_partitions is ",psutil.disk_partitions()

for x in (psutil.disk_partitions()):
    print x

print psutil.disk_usage('c:\\')

print psutil.disk_io_counters(perdisk=True)
print 'net_io_counters',psutil.net_io_counters(pernic=False)


#print "net_connections is ",psutil.net_connections()
for x in (psutil.net_connections()):
    print x

print "\n"
print "net_if_addrs is ",psutil.net_if_addrs()
print "\n"
print "net_if_stats is ",psutil.net_if_stats()


print "boot_time is ",psutil.boot_time()
print "pids is ",psutil.pids()

p=psutil.Process(8924)
print p.name()
print p.exe()
print "cwd is ",p.cwd()
print "cmdline is ",p.cmdline()
print p.status()
print p.username()
print p.create_time()
print p.memory_full_info()
print p.memory_info()
print "io_counters is",p.io_counters()
print p.open_files()
print p.connections()
print p.num_ctx_switches()
print p.nice()

print psutil.test()

for p in psutil.process_iter():
    print p

for i in  list(psutil.win_service_iter()):
    print i

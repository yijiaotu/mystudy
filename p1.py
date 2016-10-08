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


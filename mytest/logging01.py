#!/usr/bin/env python
#coding=utf-8
import logging
logging.warning('watch out')
logging.info('I told you so')

logging.basicConfig(filename='aaalog',level=logging.DEBUG)
logging.debug('This message should go to the log file')
logging.info('so should this')
logging.warning('And this ,too')
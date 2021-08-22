#!/bin/bash
#
# a simple filter to evaluate the result of the glibc
# assembly test
#
echo "" > $2
echo "" >> $2
echo "===> Test run by sajcho on `date '+%F %T'`" >> $2
echo "===> Machine `cat /sys/firmware/devicetree/base/model`" >> $2
echo "===> Kernel `uname -rms`" >> $2
echo "" >> $2
echo "" >> $2
echo "`grep -w PASS $1`" >> $2
echo "`grep -w XPASS $1`" >> $2
echo "`grep -w FAIL $1`" >> $2
echo "`grep -w XFAIL $1`" >> $2
echo "`grep -w UNSUPPORTED $1`" >> $2
echo "`grep -w ERROR $1`" >> $2
echo "" >> $2
echo "========== SUMMARY ==========" >> $2
echo "" >> $2
echo " PASS => `grep -w PASS $1 | wc -l`" >> $2
echo " XPASS => `grep -w XPASS $1 | wc -l`" >> $2
echo " FAIL => `grep -w FAIL $1 | wc -l`" >> $2
echo " XFAIL => `grep -w XFAIL $1 | wc -l`" >> $2
echo " UNSUPPORTED => `grep -w UNSUPPORTED $1 | wc -l`" >> $2
echo " ERROR => `grep -w ERROR $1 | wc -l`" >> $2
echo "" >> $2
echo "========== End of test ==========" >> $2

exit 0

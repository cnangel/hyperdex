#!/bin/sh
SPACE="space search key string number attributes     bit01, bit02, bit03, bit04, bit05, bit06, bit07, bit08,     bit09, bit10, bit11, bit12, bit13, bit14, bit15, bit16,     bit17, bit18, bit19, bit20, bit21, bit22, bit23, bit24,     bit25, bit26, bit27, bit28, bit29, bit30, bit31, bit32     index bit01     index bit02     index bit03     index bit04     index bit05     index bit06     index bit07     index bit08     index bit09     index bit10     index bit11     index bit12     index bit13     index bit14     index bit15     index bit16     index bit17     index bit18     index bit19     index bit20     index bit21     index bit22     index bit23     index bit24     index bit25     index bit26     index bit27     index bit28     index bit29     index bit30     index bit31     index bit32 create 4 partitions tolerate 0 failures"
exec python2 "${HYPERDEX_SRCDIR}"/test/runner.py --daemons=4 --space="${SPACE}" -- \
     "${HYPERDEX_BUILDDIR}"/test/search-stress-test --quiet -h {HOST} -p {PORT} -k string

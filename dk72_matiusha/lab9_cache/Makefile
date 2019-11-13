LIBDIR=/home/rabu/dev/__MCUPR__/quartus/libs
SRCDIR=$(shell pwd)/src
SRCS=$(wildcard ${SRCDIR}/*.sv ${SRCDIR}/*.v)

VOPTS= -work work -cdslib ${LIBDIR}/cds.lib -errormax 15 -update -linedebug -logfile /dev/null -messages -status -sv
EOPTS= -work work -cdslib ${LIBDIR}/cds.lib -logfile /dev/null -errormax 15 -update -access +wc -status work.test
SOPTS= -gui -cdslib ${LIBDIR}/cds.lib -logfile /dev/null -errormax 15 -status work.test:module 


.PHONY: all sim vlog elab firmware

all: sim

firmware:
	cd fw && sh make.sh 

vlog:
	cd ${LIBDIR} && ncvlog ${VOPTS} ${SRCS}


elab: vlog
	cd ${LIBDIR} && ncelab ${EOPTS}


sim: elab
	cd ${LIBDIR} && ncsim ${SOPTS}


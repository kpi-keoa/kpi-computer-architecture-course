all:
	 ncvlog -work work -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncvlog.log -errormax 15 -update -linedebug -status /home/drcah4ec/mips_core/*.v /home/drcah4ec/mips_core/alu/*.v
	 ncelab -work work -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncelab.log -errormax 15 -access +wc -status work.mips_core_tb
	 ncsim -gui -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncsim.log -errormax 15 -status work.mips_core_tb:module

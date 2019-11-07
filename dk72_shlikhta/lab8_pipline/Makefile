WAY_TO_FILE=/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/src/*.v
WAY_TO_2nd_FILE=/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/src/alu/*.v
TB_FILE=mips_core_tb


all:
	 ncvlog -work work -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncvlog.log -errormax 15 -update -linedebug -status $(WAY_TO_FILE) $(WAY_TO_2nd_FILE)
	 ncelab -work work -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncelab.log -errormax 15 -access +wc -status work.$(TB_FILE)
	 ncsim -gui -cdslib /home/drcah4ec/WorkSpace/cds.lib -logfile ncsim.log -errormax 15 -status work.$(TB_FILE):module

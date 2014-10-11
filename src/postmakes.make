#[Do not modify] Generic post-processing
%.rudb : %.rudb1
	@ cp $*.rudb1 $@
	  editrudb notchnoise $@ -h 0.1
	  editrudb gainnoise $@ -g 0.4

%.rudb1 : %.wav
	  genrudb $*.wav -V
	@ mv $*.rudb $@


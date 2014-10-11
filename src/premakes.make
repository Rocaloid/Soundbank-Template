#[Do not modify] Generic pre-processing
%.wav2 : %.wav1
	@ cp $*.wav1 $@
	@ wavnorm $@ -g 1.5 -i -40 -t -s 0.01 -e 0.01

%.wav1 : sound.wav
	@

%.wav : %.wav2
	@ cp $*.wav2 $@


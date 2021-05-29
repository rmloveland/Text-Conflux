EXE := confluence2html

readme:
	podselect $(EXE) > README.pod

readme-html: readme
	pod2html README.pod > README.html

install:
	mkdir -p $$HOME/bin && \
	cp $(EXE) $$HOME/bin/$(EXE) && \
	chmod 755 $$HOME/bin/$(EXE)

critique:
	perlcritic $(EXE)

podcheck:
	podchecker $(EXE)

syntaxcheck:
	perl -wc $(EXE)

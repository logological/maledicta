all:	Maledicta_index.pdf Maledicta_index.html Maledicta_index_plain.tsv

Maledicta_index.bib:	Maledicta_index.tsv convert_index.gawk
	./convert_index.gawk --assign format=bibtex < $< > $@

Maledicta_index.html:	Maledicta_index.tsv convert_index.gawk
	./convert_index.gawk --assign format=html < $< > $@

Maledicta_index_plain.tsv:	Maledicta_index.tsv convert_index.gawk
	./convert_index.gawk --assign format=plaintsv < $< > $@

Maledicta_index.pdf:	Maledicta_index.tex Maledicta_index.bib
	latexmk -xelatex $<

clean:
	rm -f Maledicta_index.{out,aux,bbl,bib,blg,fdb_latexmk,fls,log,pdf,synctex.gz,xdv,html} Maledicta_index_plain.tsv

.PHONY:	clean

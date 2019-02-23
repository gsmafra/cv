docker:
	docker build -t cv .
	docker run cv
	mkdir -p output
	docker cp $$(docker ps -alq):/cv-master/output/cv_en_2p.pdf output
	docker cp $$(docker ps -alq):/cv-master/output/cv_pt_2p.pdf output

local:
	mkdir -p output
	xelatex -output-directory=output src/en_2p/cv_en_2p.tex
	xelatex -output-directory=output src/pt_2p/cv_pt_2p.tex
	xelatex -output-directory=output src/en_1p/cv_en_1p.tex

clean:
	rm -f nohup.out
	rm -f output/*.aux
	rm -f output/*.log

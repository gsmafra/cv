docker:
	docker build -t cv .
	docker run cv
	mkdir -p output
	docker cp $$(docker ps -alq):/cv-master/output/cv_en_2p.pdf output
	docker cp $$(docker ps -alq):/cv-master/output/cv_pt_2p.pdf output

local:
	xelatex -output-directory=output src/en/cv_en_2p.tex
	xelatex -output-directory=output src/pt/cv_pt_2p.tex

clean:
	rm -f nohup.out
	rm -f output/*.aux
	rm -f output/*.log

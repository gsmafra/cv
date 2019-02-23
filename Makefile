docker:
	docker build -t cv .
	docker run cv
	mkdir -p output
	docker cp $$(docker ps -alq):/cv-master/output/cv_en.pdf output
	docker cp $$(docker ps -alq):/cv-master/output/cv_pt.pdf output

local:
	xelatex -output-directory=output src/en/cv_en.tex
	xelatex -output-directory=output src/pt/cv_pt.tex

clean:
	rm -f nohup.out
	rm -f output/*.aux
	rm -f output/*.log

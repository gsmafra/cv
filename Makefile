docker:
	docker build -t cv .
	docker run cv

local:
	xelatex -output-directory=output src/cv.tex

clear:
	rm cv.aux
	rm cv.log
	rm texput.log

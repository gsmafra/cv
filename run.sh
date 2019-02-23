wget https://github.com/gsmafra/cv/archive/master.zip
unzip master.zip
cd cv-master
mkdir output

# compile
xelatex -output-directory=output src/en/cv_en.tex
xelatex -output-directory=output src/pt/cv_pt.tex

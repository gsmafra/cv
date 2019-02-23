wget https://github.com/gsmafra/cv/archive/master.zip
unzip master.zip
cd cv-master
mkdir output

# compile
xelatex -output-directory=output src/en/cv_en_2p.tex
xelatex -output-directory=output src/pt/cv_pt_2p.tex

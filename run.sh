wget https://github.com/gsmafra/cv-en-2p/archive/master.zip
unzip master.zip
cd cv-en-2p-master

# english
xelatex -output-directory=output src/en/cv_en.tex
curl --upload-file output/cv_en.pdf https://transfer.sh/cv_en.pdf

# portuguese
xelatex -output-directory=output src/pt/cv_pt.tex
curl --upload-file output/cv_pt.pdf https://transfer.sh/cv_pt.pdf

wget https://github.com/gsmafra/cv-en-2p/archive/master.zip
unzip master.zip
cd cv-en-2p-master
xelatex -output-directory=output src/cv.tex
curl --upload-file output/cv.pdf https://transfer.sh/cv.pdf

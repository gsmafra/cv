wget https://github.com/gsmafra/cv-en-2p/archive/master.zip
unzip master.zip
cd cv-en-2p-master
xelatex cv.tex
curl --upload-file cv.pdf https://transfer.sh/cv.pdf

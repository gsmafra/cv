Resume in English with two pages

---

Compile with Docker + XeTeX:

1. Install Docker
2. Run these commands:
```
docker build -t cv .
docker run cv
docker cp $$(docker ps -alq):/cv-master/output/cv_en.pdf output
```

---

Compile with XeTeX:

1. Install XeTeX (the Dockerfile can be useful if you're using Debian or Ubuntu)
2. Run ```xelatex -output-directory=output src/en/cv_en.tex``` for English version or ```xelatex -output-directory=output src/pt/cv_pt.tex``` for Brazilian Portuguese version.

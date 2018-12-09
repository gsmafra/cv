Resume in English with two pages

---

Compile with Docker + XeTeX:

1. Install Docker
2. Run these commands:
```
docker build -t cv .
docker run cv
```
3. Check the URL at transfer.sh

---

Compile with XeTeX:

1. Install XeTeX (the Dockerfile can be useful if you're using Debian or Ubuntu)
2. Run ```xelatex -output-directory=output src/cv.tex```

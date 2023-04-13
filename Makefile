all: clean light dark html

# Light theme
light:
	rm -rf ./aux
	rm -f ./resume.pdf
	rm -f embed-resume.html
	rm -f resume.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./out/resume-jorgensen-pierce.pdf

# Dark theme
dark:
	rm -rf ./aux
	rm -f ./resume-dark.pdf
	rm -f embed-resume-dark.html
	rm -f resume-dark.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume-dark.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume-dark.tex
	mv ./aux/resume-dark.pdf ./out/resume-jorgensen-pierce-dark.pdf

# index.html
define INDEX
<!DOCTYPE html>
<html>
  <head>
    <title>Resume - Pierce Jorgensen</title>
  </head>
  <body>
    <a href="light.html">Light theme</a>
    <a href="dark.html">Dark theme</a>
  </body>
</html>
endef
export INDEX

# light.html
define LIGHT
<!DOCTYPE html>
<html>
  <body>
    <object data="./resume-jorgensen-pierce.pdf" type="application/pdf" width="100%" height="1000px">
    </object>
  </body>
</html>
endef
export LIGHT

# dark.html
define DARK
<!DOCTYPE html>
<html>
  <body>
    <object data="./resume-jorgensen-pierce-dark.pdf" type="application/pdf" width="100%" height="1000px">
    </object>
  </body>
</html>
endef
export DARK

# Generate html files
html:
	mkdir -p ./out
	@echo "$$INDEX" > ./out/index.html
	@echo "$$LIGHT" > ./out/light.html
	@echo "$$DARK"  > ./out/dark.html

clean:
	@rm -rf ./aux
	@rm -rf ./out

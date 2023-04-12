all: clean resume dark-theme

resume:
	rm -rf ./aux
	rm -f ./resume.pdf
	rm -f embed-resume.html
	rm -f resume.html
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf
	PDF='resume.pdf' jinja2 templates/index.html.j2 > resume.html
	PDF='resume.pdf' jinja2 templates/embed.html.j2 > embed-resume.html

dark-theme:
	rm -rf ./aux
	rm -f ./resume_dark.pdf
	rm -f embed-resume-dark.html
	rm -f resume-dark.html
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume-dark.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume-dark.tex
	mv ./aux/resume_dark.pdf ./resume_dark.pdf
	PDF='resume_dark.pdf' jinja2 templates/index.html.j2 > resume-dark.html
	PDF='resume_dark.pdf' jinja2 templates/embed.html.j2 > embed-resume-dark.html

open:
	@if [ -f "resume.pdf" ]; then\
		xdg-open resume.pdf || open resume.pdf || explorer.exe resume.pdf;\
	fi

clean:
	@rm -rf ./aux
	@rm -f ./*.pdf
	@rm -f ./*.html

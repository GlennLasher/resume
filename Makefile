all : resume.html

resume.html : header.html README.html footer.html
	cat $^ > $@

README.html : README.md
	markdown README.md > README.html

clean :
	rm README.html index.html *~

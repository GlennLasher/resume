all : index.html

index.html : README.html header.html footer.html
	cat header.html README.html footer.html > index.html

README.html : README.md
	markdown README.md > README.html

clean :
	rm README.html index.html *~

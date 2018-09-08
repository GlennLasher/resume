all : publish

publish : EBGaramond_License.txt resume.css resume.html resume.pdf ttf/EBGaramond12-Regular.ttf
	s3cmd sync $^ s3://www.kc2idf.com/resume/ --rr
	s3cmd setacl --recursive s3://www.kc2idf.com/resume/ -P

resume.html : header.html README.html footer.html
	cat $^ > $@

README.html : README.md
	markdown README.md > README.html

clean :
	rm -f README.html index.html *~

all:
	@echo 'Building templates'
	@jade -p ./templates/api.jade -P < templates/api.jade > api.html
	@jade -p ./templates/apps.jade -P < templates/apps.jade > apps.html
	@jade -p ./templates/contact.jade -P < templates/contact.jade > contact.html
	@jade -p ./templates/guide.jade -P < templates/guide.jade > guide.html
	@jade -p ./templates/index.jade -P < templates/index.jade > index.html
	@jade -p ./templates/samples.jade -P < templates/samples.jade > samples.html

test:
	python -m SimpleHTTPServer 4002

clean:
	rm -rf ./*.html

.PHONY: clean
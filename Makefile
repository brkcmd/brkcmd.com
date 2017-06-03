build:
	hugo --cleanDestinationDir --destination public

clean:
	rm -rf public

deploy: build
	netlify deploy --path public


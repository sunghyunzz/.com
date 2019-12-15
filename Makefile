.PHONY: build
build:
	bundle exec jekyll build

.PHONY: run
run:
	bundle exec jekyll s

.PHONY: test
test: build
	bundle exec htmlproofer ./_site --assume-extension --check-html --allow-hash-href --disable-external --check-img-http --check-opengraph --enforce-https

.PHONY: upgrade
upgrade:
	bundle update

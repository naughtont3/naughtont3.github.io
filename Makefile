all: build

#####
# Note: Build assumes you have done initial setup, for example:
#
#	bundle install
#	python3 -m venv ve3
#	. ve3/bin/activate
#	pip install jupyter
#####
setup:
	bundle install
	python3 -m venv ve3
	. ve3/bin/activate
	pip install jupyter

build:
	. ve3/bin/activate
	bundle exec jekyll serve --lsi

clean:
	rm -rf _site/

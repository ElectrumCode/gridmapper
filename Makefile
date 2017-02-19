chrome-test-files := $(wildcard tests/chrome/*.js)

firefox-test-files := $(patsubst tests/chrome/%,tests/firefox/%,$(chrome-test-files))

all:
	@echo "Did you want to run 'make tests'?"

test: test-firefox test-chrome

test-firefox: $(firefox-test-files)
	node_modules/.bin/nightwatch --env firefox

test-chrome: $(chrome-test-files)
	node_modules/.bin/nightwatch --env chrome

tests/firefox/%.js: tests/chrome/%.js
	@mkdir -p tests/firefox
	sed -e "s/\.keys(/.sendKeys('#ui',/" < $< > $@

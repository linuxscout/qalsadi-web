# Makefile for building and testing the Qalsadi package

DATE := $(shell date +'%y.%m.%d-%H:%M')
LIMIT ?= 100
PROFILER ?= -m cProfile
PY := python3

.PHONY: all clean backup publish \
        md2rst md2html wheel install sdist upload \
        doc testcase archive_profile test_all \
        test2 testqrn teststop testone \
        test1000 test63 test73 test73c \
        test_unit dev unittest eval eval_all\
        clean_cache changelog

# Default target
default: all


# Backup target (optional)
backup:
	@echo "Backup logic goes here"


# Publish code to GitHub
publish:
	git push origin main


# Convert Markdown to HTML
md2html:
	pandoc -s -r markdown -w html docs/README-ar.md -o web/templates/README.html



# Build documentation
doc:
	cd docs; make html
changelog:CHANGFILE=docs/CHANGELOG.md
changelog:
	# detailed changelog
	git log --pretty=format:"* %ad %h - %s (%an)" --date=short >docs/ChangeLog
	@echo "# Changelog" > $(CHANGFILE)
	@echo "" >>  $(CHANGFILE)
	@git tag --sort=-creatordate | while read tag; do \
		echo "## $$tag - $$(git log -1 --format=%ad --date=short $$tag)" >>  $(CHANGFILE); \
		git log "$$tag^".."$$tag" --pretty="* %s" --no-merges >>  $(CHANGFILE); \
		echo "" >>  $(CHANGFILE); \
	done
	@echo " $(CHANGFILE) generated from Git tags."

# Run generic test case
LOG := $(basename $(DATA_FILE)).log
OUT := $(basename $(DATA_FILE)).csv



# Unit tests
test_unit: clean_cache
	$(PY) -m  pytest tests/test_unit_web.py

# Unit tests
unittest:
	$(PY) -m unittest discover -s tests

dev:
	pip install -e ../qalsadi-aranalex


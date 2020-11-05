CHICKEN_CLEAN		:= chicken-clean
MARKDOWN_SVNWIKI	:= markdown-svnwiki
README_MD		:= README.md
README_ORG		:= README.org
README_SVNWIKI  	:= README.svnwiki
SALMONELLA		:= salmonella
SALMONELLA_LOG		:= salmonella.log

all: doc test

clean:
	$(CHICKEN_CLEAN)
	rm -f $(SALMONELLA_LOG)

doc: $(README_SVNWIKI)

$(README_SVNWIKI): $(README_MD)
	$(MARKDOWN_SVNWIKI) $< > $@

test:
	$(SALMONELLA)

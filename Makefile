CHICKEN_CLEAN		:= chicken-clean
README_ORG		:= README.org
SALMONELLA		:= salmonella
SALMONELLA_LOG		:= salmonella.log

all: doc test

clean:
	$(CHICKEN_CLEAN)
	rm -f $(SALMONELLA_LOG)

test:
	$(SALMONELLA)

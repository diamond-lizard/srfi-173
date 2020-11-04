CHICKEN_CLEAN	:= chicken-clean
SALMONELLA	:= salmonella
SALMONELLA_LOG	:= salmonella.log

test:
	$(SALMONELLA)

clean:
	$(CHICKEN_CLEAN)
	rm -f $(SALMONELLA_LOG)

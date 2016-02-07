CMD_SEP = "========================================"
CMD_DONE = "Done."
CLEAN_CMD = rm -f *.aux       ; \
            rm -f *.bbl       ; \
            rm -f *.blg       ; \
            rm -f *-blx.bib   ; \
            rm -f *.log       ; \
            rm -f *.out       ; \
            rm -f *.run.xml   ; \
            rm -f *.toc       ; \
            rm -f *.lof       ; \
            rm -f *.lot       ; \
            rm -f *.lol       ; \
            rm -f comment.cut ; \

all: full

quick:
	@echo "QUICK BUILD"
	@echo
	@echo $(CMD_SEP)
	@echo "Building bibliography..."
	bibtex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo
	@echo $(CMD_SEP)
	@echo "Building richard_tapia_thesis_abstract300..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo

full:
	@echo "FULL BUILD"
	@echo
	@echo $(CMD_SEP)
	@echo "Building richard_tapia_thesis_abstract300 (1st time)..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo
#	@echo $(CMD_SEP)
#	@echo "Building bibliography..."
#	bibtex richard_tapia_thesis_abstract300
#	@echo $(CMD_DONE)
#	@echo $(CMD_SEP)
#	@echo
	@echo $(CMD_SEP)
	@echo "Rebuilding richard_tapia_thesis_abstract300 (2nd time)..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo
	@echo $(CMD_SEP)
	@echo "Rebuilding richard_tapia_thesis_abstract300 (3rd time)..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo
	@echo $(CMD_SEP)
	@echo "Rebuilding richard_tapia_thesis_abstract300 (4th time)..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo
	@echo $(CMD_SEP)
	@echo "Rebuilding richard_tapia_thesis_abstract300 (last time)..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo

clean:
	@echo $(CMD_SEP)
	@echo "Cleaning '.' folder..."
	@-$(CLEAN_CMD)
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)

new: clean
	@echo "NEW BUILD"
	@echo
	@echo $(CMD_SEP)
	@echo "Building richard_tapia_thesis_abstract300..."
	xelatex richard_tapia_thesis_abstract300
	@echo $(CMD_DONE)
	@echo $(CMD_SEP)
	@echo

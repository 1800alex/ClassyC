.DEFAULT_GOAL := all
.PHONY: all clean test format

all:
	@tar -czf ClassyC.tar.gz ClassyC.h LICENSE README.md

test:
	@make --no-print-directory -C tests

format:
	@clang-format -i ClassyC.h
	@clang-format -i classyc_sample.h
	@make --no-print-directory -C tests format

clean:
	@make --no-print-directory -C tests clean

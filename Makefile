run:
	gforth may4.fs

test:
	gforth may4.fs > out.txt
	diff may4.txt out.txt

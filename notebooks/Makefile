%.pdf : %.ipynb
	jupyter nbconvert --to pdf $<
%.html : %.ipynb
	jupyter nbconvert --to html $<

html: 01_numpy.html 02_arrays.html 03_pandas.html 04_matplotlib.html

pdf: 01_numpy.pdf 02_arrays.pdf 03_pandas.pdf 04_matplotlib.pdf



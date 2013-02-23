clean:
	find content -name *~ -delete
	rm -rf ../teacupgorilla-pages/*

build: clean
	python run.py build content/

serve: build
	python run.py serve content/

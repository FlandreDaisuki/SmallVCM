# This is under MIT licence
# Also, I am not at all proud of this makefile, feel free to make better
CXX = g++-6
DIST = build

all:release

debug: dist_folder
	$(CXX) -o $(DIST)/smallvcm.debug ./src/smallvcm.cxx -O3 -std=c++0x -fopenmp -g

release: dist_folder
	$(CXX) -o $(DIST)/smallvcm ./src/smallvcm.cxx -O3 -std=c++0x -fopenmp

old_rng: dist_folder
	$(CXX) -o $(DIST)/smallvcm ./src/smallvcm.cxx -O3 -fopenmp -DLEGACY_RNG

clean: dist_folder
	rm $(DIST)/*

dist_folder:
	@mkdir -p $(DIST)

unreport:
	rm *.bmp index.html

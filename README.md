# Distribution of the THT (Tactus Hypothesis Tracker) package and dependencies

This repository is intended to install the **THT** model with its
non-pip dependencies. The **THT** model is presented in *Miguel M.A., Sigman M, Fernandez Slezak D (2020) From beat tracking to beat expectation: Cognitive-based beat tracking for capturing pulse clarity through time. PLOS ONE 15(11): e0242207. https://doi.org/10.1371/journal.pone.0242207*

The following submodules are referenced here:

* `tht`: python package containing the implementation of the **THT** model 
* `beatroot`: python script running Dixon 2007 [1] beat tracking and onset
    detection model's implementation
* `midi`: custom midi parsing library
* `python-midi`: python3 adaptation of the [python-midi](https://github.com/vishnubob/python-midi) package
* `povel1985`: implementation of the criterion for salient onset events
    mentioned in Povel and Essens 1985 [2]

[1] Dixon, S., 2007. Evaluation of the audio beat tracking system beatroot.
Journal of New Music Research, 36(1), pp.39-50.
[2] Povel, D.J. and Essens, P., 1985. Perception of temporal patterns. Music
Perception: An Interdisciplinary Journal, 2(4), pp.411-440.

## Installation

### Dependencies

**THT** require the following non-python dependencies:

#### Java

Java is required to compile _Beatroot_. Java can be installed in Ubuntu as:

    > apt install openjdk-8-jdk openjdk-8-jre


#### Swig

Swig is require by `python-midi`. It can be installed in Ubuntu as:

    > apt install swig


### Install Steps

All 5 submodules contain `setup.py` scripts to install with `setuptools`.
The `install.sh` bash script clones each submodule and then installs them all
using _pip_.

In short, to install:

    $> sh install.sh

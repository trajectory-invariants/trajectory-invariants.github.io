---
title: Installation
weight: 1
next: /docs/python
prev: /docs/getting-started
---

## Prerequisites

Python is assumed to be installed. The minimum version is 3.6.

## Installation of invariants-py

Clone (or download) the [Git repository](https://github.com/trajectory-invariants/invariants_py):

```shell
git clone https://github.com/trajectory-invariants/invariants_py.git
```

Install the Python package in your Python environment:

```shell
cd invariants_py
python -m pip install -e .
```

## (Optional) Installation of fast optimization solver

To speed-up the solution of several optimal control problems within `invariants-py`, you can optionally choose to install the [fatrop solver](https://github.com/meco-group/fatrop). This step is entirely optional. If `fatrop` is not installed, the default `IPOPT` solver will be used.

{{< callout >}}
Currently a stable release of **fatrop** is only available in the Linux operating stystem! 
{{< /callout >}}

To proceed with the installation, clone the following repository:    

```shell
cd ..
git clone https://github.com/meco-group/fatrop.git --recursive
cd fatrop
```

Set the CMake flags and change the `BLASFEO_target` parameter to your system architecture (see table of https://github.com/giaf/blasfeo)

```shell
sudo apt-get install cmake
export CMAKE_ARGS="-DBLASFEO_TARGET=X64_AUTOMATIC -DENABLE_MULTITHREADING=OFF"
```

Build and install the Fatropy project

```shell
cd fatropy
pip install --upgrade pip setuptools
pip install .
```

Finally, install rockit with the Fatropy interface

```shell
git clone https://gitlab.kuleuven.be/meco-software/rockit.git
git clone https://gitlab.kuleuven.be/u0110259/rockit_fatrop_plugin.git ./rockit/rockit/external/fatrop
cd rockit
pip install .
```
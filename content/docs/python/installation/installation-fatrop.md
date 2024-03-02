---
title: Optional Fatrop solver
weight: 1
next: /docs/python/quickstart
prev: /docs/python/installation
---

[Fatrop](https://github.com/meco-group/fatrop) is a fast solver for trajectory optimization. Fatrop can be used to speed up the calculation of trajectory invariants and the generation of trajectories from the invariants.

This installation step is entirely optional, but it is recommended if you intend to use `invariants-py` for online applications. If Fatrop is not installed, the default `IPOPT` solver is chosen automatically.

{{< callout >}}
IMPORTANT --- A stable release of Fatrop is currently only available within the  Linux operating system! 
{{< /callout >}}

#### Linux installation

To proceed with the installation of Fatrop, clone the following repository:    

```shell
cd ..
git clone https://github.com/meco-group/fatrop.git --recursive
cd fatrop
```

Set the CMake flags. If your device does not use an x64 system architecture, then you should change the `BLASFEO_target` parameter (see table of https://github.com/giaf/blasfeo).

```shell
sudo apt-get install cmake
export CMAKE_ARGS="-DBLASFEO_TARGET=X64_AUTOMATIC -DENABLE_MULTITHREADING=OFF"
```

Build and install the Fatropy project:

```shell
cd fatropy
pip install --upgrade pip setuptools
pip install .
```

Finally, install [Rockit](https://gitlab.kuleuven.be/meco-software/rockit) with the Fatropy interface:

```shell
git clone https://gitlab.kuleuven.be/meco-software/rockit.git
git clone https://gitlab.kuleuven.be/u0110259/rockit_fatrop_plugin.git ./rockit/rockit/external/fatrop
cd rockit
pip install .
```

To test whether the whole installation of Fatrop is successful, the following commands in Python should work:

```python
import fatropy
import rockit
ocp = rockit.Ocp()
ocp.method(rockit.external_method('fatrop'))
```
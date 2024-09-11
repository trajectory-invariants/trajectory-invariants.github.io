---
title: Installation
weight: 1
prev: /docs/python
next: /docs/python/quickstart
---

This page explains how the `invariants-py` package can be installed in Python.

#### Prerequisites

On Windows, it is recommended to first install [git-for-windows](https://git-scm.com/download/win). This installation includes the `git bash` program allowing you to write git commands in a Bash terminal, similar to Linux. Afterwards, you should install a Python distribution for Windows. The [Anaconda Python distribution](https://www.anaconda.com/download#downloads) is recommended. This distribution includes a program called `Anaconda Powershell Prompt` which you can use as a terminal in which Python is available.

On Linux, `git` and `Python` are pre-installed.


#### Invariants-py installation

Open a terminal (e.g. the default terminal in Linux or `Anaconda Powershell Prompt` in Windows).

Make sure the latest version of `pip` is installed:
```shell
pip install --upgrade pip
```

Navigate to a suitable directory and clone the Git repository of [invariants-py](https://github.com/trajectory-invariants/invariants_py):

```shell
git clone https://github.com/trajectory-invariants/invariants_py.git
```

Install the Python package in your Python environment:

```shell
cd invariants_py
pip install -e .
```

If the installation is successful, you should be able to run the following command in Python:

```python
import invariants_py
```

After installation, you can proceed with the Quickstart guide or you can choose to first install the optional Fatrop solver (only in Linux).

{{< cards >}}
  {{< card link="../quickstart" title="Quickstart guide" icon="document-duplicate" >}}
  {{< card link="../installation/installation-fatrop" title="(Optional) Fatrop installation" icon="plus" >}}
{{< /cards >}}

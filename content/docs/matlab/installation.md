---
title: Installation
weight: 1
next: /docs/matlab
prev: /docs/getting-started
---

## Installation of invariants-mat

Git clone (or [download](https://github.com/trajectory-invariants/invariants_mat/archive/refs/heads/main.zip) and unzip) the [**invariants-mat**](https://github.com/trajectory-invariants/invariants_mat) repository:

```shell
git clone https://github.com/trajectory-invariants/invariants_mat.git
```

Download [**CasADi 3.5.5**](https://github.com/casadi/casadi/releases/tag/3.5.5) according to your version of Matlab and operating system. Unzip the downloaded folder and place the unzipped folder inside the `invariants_mat/libraries/` folder.

As an example, if you are in Windows and using Matlab >R2016a, the result should be that CasADi can be found here: 
`invariants_mat/libraries/casadi-windows-matlabR2016a-v3.5.5/`
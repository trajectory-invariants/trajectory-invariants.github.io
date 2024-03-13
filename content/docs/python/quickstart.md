---
linkTitle: "Quickstart"
title: Quickstart guide
weight: 2
sidebar:
  open: true
prev: docs/python/installation/
---

{{< callout >}}
  --- Still under construction ---
{{< /callout >}}


# Calculate the Invariants of a Translation Trajectory

This page demonstrates how to calculate the invariants of a translation trajectory in Python.

First import the necessary modules:

```Python
from invariants_py import read_and_write_data as rw
import invariants_py.plotters as plotters
from invariants_py import calculate_invariants
```

Load in the trajectory data:

```Python
path_data = rw.find_data_path("sinus.txt")
trajectory, time = rw.read_pose_trajectory_from_txt(path_data)
```

Calculate invariants:

```Python
invariants, progress, calc_trajectory = calculate_invariants.calculate_invariants_translation(trajectory)
```

Plot the results:
```Python
plotters.plot_invariants_new(invariants, progress)
```

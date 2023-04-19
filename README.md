TROLL and associated R packages Singularity container
================
Sylvain Schmitt
April 28, 2021

**TROLL and associated R packages**

This container includes:

- `TROLL` 4.0.0 (dev)
- `R` 4.0.3
- `rcontroll` 0.2.0.9004 (dev)

`rcontroll` integrates the individual-based and spatially-explicit TROLL
model to simulate forest ecosystem and species dynamics forward in time.
`rcontroll` provides user-friendly functions to set up and analyse
simulations with varying community compositions, ecological parameters,
and climate conditions.

\[<https://sylvainschmitt.github.io/rcontroll/>\]

Singularity container based on the recipe:
[`Singularity`](https://github.com/sylvainschmitt/singularity-troll/blob/main/Singularity)

Image singularity (V\>=3.3) is automatically test and built and pushed
on the registry using
[test.yml](https://github.com/sylvainschmitt/singularity-troll/blob/main/.github/workflows/test.yml)
&
[builder.yml](https://github.com/sylvainschmitt/singularity-troll/blob/main/.github/workflows/builder.yml)

**build**:

``` bash
sudo singularity build troll.sif Singularity
```

**pull**:

``` bash
singularity pull https://github.com/sylvainschmitt/singularity-troll/releases/download/0.0.1/sylvainschmitt-singularity-r-troll.latest.sif
```

**snakemake**:

``` python
    singularity: 
        "https://github.com/sylvainschmitt/singularity-troll/releases/download/0.0.1/sylvainschmitt-singularity-troll.latest.sif"
```

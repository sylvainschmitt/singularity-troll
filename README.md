TROLL and associated R packages Singularity container
================
Sylvain Schmitt
April 28, 2021

**TROLL and associated R packages**

This container includes:

- `TROLL` 4.0.0 (dev)
- `R` 4.0.3
- `rcontroll` 0.2.0.9004 (dev)
- `datatrollr` 0.1.0.9001 (dev)

`rcontroll` integrates the individual-based and spatially-explicit TROLL
model to simulate forest ecosystem and species dynamics forward in time.
`rcontroll` provides user-friendly functions to set up and analyse
simulations with varying community compositions, ecological parameters,
and climate conditions.

\[<https://sylvainschmitt.github.io/rcontroll/>\]

`datatrollr` integrates input and evaluation data for the use of
`rcontroll` with `TROLL` V4 (water module).

\[<https://github.com/sylvainschmitt/datatrollr>\]

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

> Note: use the –contain option if you want to avoid conflicts with your
> local R install

**usage**:

``` bash
singularity shell -e -B "/home/sschmitt/Documents/data" troll.sif 
```

> `-e` to avoid conflict with local environment and `-B` to bind the
> data folder for `datatrollr` pacakge


<!-- README.md is generated from README.Rmd. Please edit that file -->

# rd4tools

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

rd4tools wraps the [d4tools](https://github.com/38/d4-format) tool for
reading & writing d4 files using R data structures.

## Installation

### Development Version

You can install the development version of rd4tools from
[GitHub](https://github.com/snystrom/rd4tools) with:

``` r
if (!requireNamespace("remotes", quietly=TRUE))
  install.packages("remotes")
remotes::install_github("snystrom/rd4tools")
```

``` r
library(rd4tools)
```

### d4tools

rd4tools relies on a local install of
[d4tools](https://github.com/38/d4-format). You can find binaries at the
[d4tools releases](https://github.com/38/d4-format/releases) page, or if
you have [Rust](https://www.rust-lang.org/tools/install) installed, can
compile from source using `cargo install d4tools`.

rd4tools provides `d4_install_cargo()` which will run `cargo install
d4tools` from R, installing it in the users default cargo directory.

rd4tools needs to know the location of `rd4tools` on your local machine.
If installing using cargo, rd4tools should autodetect the binary if
installed at `~/.cargo/bin/d4tools`. Otherwise, you can set the
`d4tools` option once per session like so:

`options("d4tools" = "path/to/d4tools")`

Alternatively, all rd4tools functions contain the `d4tools` argument,
which accepts a path to the `d4tools` binary.

To test whether R detects d4tools, run

``` r
d4_install_check()
#> checking main install
#> ✓ /home/rstudio/.cargo/bin
```

## Examples

Examples are still a work-in-progress, but the following functions all
work in my hands. See their man pages for details on usage.

  - `d4_create()` convert a Bigwig, BAM, or CRAM file to d4 format.
  - `d4_view()` returns signal within target regions as `GRanges`
  - `d4_view_genome()` returns genome file used as `Seqinfo`
  - `d4_stat()` returns summary statistics
  - `d4_histogram()` returns a histogram of score values

# Citation

Please cite the d4 authors if using rd4tools:

Efficient storage and analysis of quantitative genomics data with the
Dense Depth Data Dump (D4) format and d4tools. Hao Hou, Brent S
Pedersen, Aaron Quinlan bioRxiv 2020.10.23.352567; doi:
<https://doi.org/10.1101/2020.10.23.352567>

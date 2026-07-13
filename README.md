
# Lmisc

<!-- badges: start -->
<!-- badges: end -->

Lmisc contains a range of miscellaneous functions that I have found useful:

- compare(): For two vectors, reports results of setdiff() in both directions, union(), intersect(), setequal() (i.e. if elements are the same), length()s, and unique values.
- dev_off(): Shuts down all graphic devices, like a repeated call to dev.off().
- dp(): Returns a number to a certain number of decimal places, while trimming white space.
- expit(), logit().
- find_ci(): Finds confidence interval from estimate and standard error, including taking reciprocal and/or exponential. Can also accept estimate and confidence interval and return reciprocal and/or exponent.
- print_ci(): Prints estimate and confidence interval neatly, e.g. "XX (95% CI [YY, ZZ])", given estimate and confidence interval.
- get_images_w_path(): Given a path, returns a string vector of all .png files located at that path. Each element contains the path plus the filename. Useful for adding images to an R Markdown document.
- hba1c_to_mmol(): Converts HbA1c from percentage to mmol per mol.
- hba1c_to_percent(): Converts HbA1c from mmol per mol to percentage.
- odds(): takes the odds of a proportion.
- welch(): undertakes Welch test using means, standard deviations and sample sizes.

## Installation

You can install the development version of Lmisc from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("martinlaw/Lmisc")
```


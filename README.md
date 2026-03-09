# iestylr

------------------------------------------------------------------------

### About *iestylr*

*iestylr* was created by members of the Institutional Effectiveness (IE) team at WashU to streamline application of the IE data visualization style guide in R. This package provides predefined color palettes and custom themes compatible for use in ggplot2.

### Installing *iestylr*

*iestylr* is not hosted on the official repository for R packages (CRAN), and must be installed remotely from Github using the *remotes* package:

-   `install.packages("remotes")`

-   `library(remotes)`

Once *remotes* is installed, *iestylr* can be pulled with the following functions:

-   `remotes::install_github('jenineharris/iestylr')`

-   `library(iestylr)`

### Using *iestylr*

*iestylr* applies styles to visualizations created with the *ggplot2* package. Ensure it is installed prior to using this package.

Below is a brief summary of the functions available in *iestylr* :

-   Apply an IE color palette:

    -   `scale_fill_ie(palette = "palette_categorical")`

    -   `scale_fill_ie(palette = "palette_diverging")`

    -   `scale_fill_ie(palette = "palette_sequential")`

-   Apply IE's custom *ggplot2* theme:

    -   `theme_iedefault()`

Note: The IE custom *ggplot2* theme uses the Calibri font, which is often not available on Mac without adding specifically to the ~/Library/Fonts folder.

Below is an example of a simple bar graph with the categorical palette and custom theme applied:

``` r
library(iestylr)
library(ggplot2)

d <- data.frame(
  Program = c("Arts", "Sciences", "Business", "Engineering"),
  Enrollment = c(120, 200, 150, 180),
  Satisfaction = c(2, 4, 3, 5)
)


ggplot(d, aes(x = Program, y = Enrollment, fill = Program)) +
  geom_col() +
  scale_fill_ie(palette = "palette_categorical")+
  labs(
    title = "Enrollment by Program",
    x = "Program",
    y = "Number of Students"
  ) +
  theme_iedefault()
```

### Contact

For questions or requesting additions to this package, please contact Jenine Harris at [harrisj\@wustl.edu].

Special thanks to contributions from Mike Cahill and Audrey Lee!

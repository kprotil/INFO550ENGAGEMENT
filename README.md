## Repository Contents

1.  Data - data for these analyses lives here!
2.  Code - folder w/Rscripts to generate tables & figures.

-   angelo\_analysis.R: generates Video Views vs. Video Length figure
-   chang\_summary.R: generates Table 1. Summary Statistics of videos
    and Histogram of total length by topic figure
-   karl\_analysis.R: generates figure of video number and engagement

<<<<<<< HEAD
## Generating Tables & Figures

To build, run each Rscript in the “code” folder.

Table and figure outputs will appear in the “output” folder.

## Restore R Package Environment

To restore R package environment, run "make install" in the terminal.
=======
## Restore R Package Environment

Before running any of the R code, restore the package environment
To restore R package environment, run `make install` in the terminal.

## Generating Tables & Figures

To build Karl's analysis, run `make karl_figures`
To build Chang's analysis, run `make chang_figures`
To build Angelo's analysis, run `make angelo_figures`

Table and figure outputs will appear in the “output” folder.

## Generating Report

To build the report, run `make report` or simply `make`
>>>>>>> karlupdates

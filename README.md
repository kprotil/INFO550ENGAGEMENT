## Repository Contents

1.  Data - data for these analyses lives here!
2.  Code - folder w/Rscripts to generate tables & figures.

-   angelo_analysis.R: generates Video Views vs. Video Length figure
-   chang_summary.R: generates Table 1. Summary Statistics of videos
    and Histogram of total length by topic figure
-   karl_analysis.R: generates figure of video number and engagement

## Generating Tables & Figures

To build, run each Rscript in the “code” folder.

Table and figure outputs will appear in the “output” folder.

## Restore R Package Environment

Before running any of the R code, restore the package environment.
To restore R package environment, run `make install` in the terminal.

## Generating Report

To build the report, run `make report`.

## Generating Customized Report

To build the report using the overall data, run `export WHICH_CONFIG=default`, then run `make report`.

To build the report using the only the data for installation videos, run `export WHICH_CONFIG=install`, then run `make report`. This will only analyze the videos with topic "windows_install" or "mac_install".

## Removing Output
To remove the generated report and output, run `make clean`.




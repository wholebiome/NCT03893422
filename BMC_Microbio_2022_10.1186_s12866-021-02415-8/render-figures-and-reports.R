
# Set pandoc env var to match your system
Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")

# Defines the order for rendering.
# For instance, Figure 03 depends on a data object (untargeted bile acids) 
# created in the Figure 04 report.

message("\n\nFIGURE 02 ...\n\n")
rmarkdown::render("Figure-02 SCFA/Figure-02.Rmd")

message("\n\nFIGURE 04 (before 03) ...\n\n")
rmarkdown::render("Figure-04 Untargeted/Figure-04.Rmd")

message("\n\nFIGURE 03 ...\n\n")
rmarkdown::render("Figure-03 Bile Acids/Figure-03.Rmd")

message("\n\nFIGURE 05 ...\n\n")
rmarkdown::render("Figure-05 Sulfonylurea/Figure-05.Rmd")

message("\n\nMaking README ...\n\n")
rmarkdown::render("README.Rmd")

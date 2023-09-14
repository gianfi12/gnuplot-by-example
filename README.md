# How to plot stuff

The main goal of this repository is to provide a quick and easy way to generate visually pleasing plots for scientific papers in vectorial format.
We provide a collection of working examples for the most common types of plots, that can be taken and easily customized to minimize your time-to-plot.

To reach this goal we hinge on separation of concerns.
All the examples use data already post-processed and organized in a way that is easy to plot (and customize) with [gnuplot](http://www.gnuplot.info/).
How to generate these data is up to the user.

This approach gave us the best experience since the storage required to generate the plot is usually very small and can be bundled together with the source of the paper.
In this way, it is easier to change it during the review process, which may last for months.

If you are interested in the usage of Gnuplot, there are plenty of useful resources:

- [official documentation](http://www.gnuplot.info/documentation.html)
- [gnuplotting](http://www.gnuplotting.org/)

# Repository organization

Each folder is named after the general type of plot that it targets.
For some types, we also provide variants in a dedicated folder.
All the examples have the following files:
 - The example data, in a CSV format
 - The Gnuplot script, as plain UTF-8 text
 - A readme that describes how to customize it, and provides the plot that will be generated

For convenience, we might provide a simple Python script to perform trivial post-processing operations on data.

# How to use the repository

1. Copy the most related example in your local directory
2. Read its readme to understand how to customize it
3. Update the sample data with the real one
4. Generate the plot with Gnuplot
  - Usually is a matter of `gnuplot < plot.gnuplot > plot.pdf`

# How to plot stuff

The main goal of this repository is to provide quick and easy way to generate visually pleasing plots for scientific papers.
For the most common types, we provide an example that can be taken and easily customized to minimize the time-to-plot.

To reach this goal we hinge on separation of concerns.
We provide examples that uses data already post-processed and organized in a way that it is easy to plot (and customize) with [gnuplot](http://www.gnuplot.info/).
How to generate these data is up to the user.

In our experience this lead to the best experience since the data and gnuplot script are usually very small and can be bundled togheter with the source of the paper.
In this way it is easier to change it after each review, usually in the spawn of months.

If you are interested about the usage of gnuplot, there are plenty of useful resources:

- [offical documentation](http://www.gnuplot.info/documentation.html)
- [gnuplotting](http://www.gnuplotting.org/)

# Repository organization

Each folder is named after the general type of plot that it targets.
For some types we provides some variants that might be handy in a dedicated folder.
All the examples have the following files:
 - The example data, in a csv format
 - The gnuplot script, as plain UTF-8 text
 - A readme that descibes how to customize it, and provide the plot that will be generated

For convenience, we might provide a simple python script to perform trivial post-processing operations on data.

# How to use the repository

1. Copy the most related example in your local directory
2. Read its readme to understand how to customize it
3. Update the sample data with the real one
4. Generate the plot with gnuplot


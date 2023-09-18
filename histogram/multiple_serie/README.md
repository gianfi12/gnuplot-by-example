## Plot example
![histogram](pic/screenshot.png)

## Data layout

We use a csv file that as one column for each serie that we want to plot and one column with the labels for the x-axys.
The idea is that each row has the x-axys label and the y-values for all the data series.
## Customization opportunities

* By editing the `plot` statement we can change the following properties:
  - the pattern type
  - the pattern color
  - the title of the serie, which will be in the legend
* Change the range of the y-axis, by editing the `yrange` statement
* Change the label of the y-axis, by editing the `ylabel` statement
* Change the plot size (and aspect ration) and font size, by editing the `terminal` statement

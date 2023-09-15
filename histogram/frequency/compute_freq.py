import sys
import csv
import math
import argparse

if __name__ == "__main__":
    # get the parameters from command line arguments
    parser = argparse.ArgumentParser(
        description="Read from the standard input a CSV-like file that represents the distribution. Print on the standard output a CSV file that represents the PDF of the first column. If the 'cumulative' switch is set, we print the cumulative distribution instead.",
        usage="python3 compute_freq.py [-h] [-m MIN] [-M MAX] [--bin_width WIDTH] [--cumulative] [--separator SEP] < /path/to/dist.csv > /path/to/histogram.csv",
    )
    parser.add_argument(
        "-m",
        "--min",
        help="The minimum value in the plot",
        type=float,
        required=False,
    )
    parser.add_argument(
        "-M",
        "--max",
        help="The maximum value in the plot",
        type=float,
        required=False,
    )
    parser.add_argument(
        "--bin_width",
        help="The width of each bin",
        type=float,
        dest="WIDTH",
        required=False,
    )
    parser.add_argument(
        "--cumulative",
        help="If set, we compute the cumulative frequency",
        action="store_true",
    )
    parser.add_argument(
        "--separator",
        help="The CSV column delimiter",
        type=str,
        dest="SEP",
        default=" ",
    )
    args = parser.parse_args()

    # get all the data from the standard input
    data = []
    csv_reader = csv.reader(sys.stdin, delimiter=args.SEP)
    for row in csv_reader:
        try:
            data.append(float(row[0]))
        except ValueError:
            print(
                f"Unable to convert '{row}' to a float value, skipping ...",
                file=sys.stderr,
            )
        except IndexError:
            print(f"The row '{row}' is empty, skipping ...", file=sys.stderr)
    if not data:
        raise ValueError("Unable to compute the frequency with no data")

    # get the boundaries of our problem
    if args.min:
        min_value = args.min
    else:
        min_value = min(data)
    if args.max:
        maxish_value = args.max
    else:
        maxish_value = max(data)
    if args.WIDTH:
        bin_width = args.WIDTH
    else:
        # by default we use 15 values
        bin_width = abs(maxish_value - min_value) / 15.0

    # make sure that they make sense
    min_value = min(min_value, maxish_value)
    maxish_value = max(min_value, maxish_value)
    bin_width = abs(bin_width)
    if bin_width < sys.float_info.epsilon:
        raise ValueError(f"The bin width is zero '{bin_width}'")
    if maxish_value - min_value < sys.float_info.epsilon:
        raise ValueError(
            f"The range of values is too narrow {maxish_value - min_value}"
        )

    # count the frequency of all the values
    num_data = float(len(data))
    num_bin = int(math.ceil((maxish_value - min_value) / bin_width))
    histogram = [0] * num_bin
    for value in data:
        histogram[
            max(min(int(math.floor((value - min_value) / bin_width)), num_bin - 1), 0)
        ] += 1

    # make sure that we counted all the data in input
    if sum(histogram) != num_data:
        raise AssertionError("Internal error, we didn't count all the values")

    # print the CSV file
    cumulative_counter = 0
    for bin_index, num_occurences in enumerate(histogram):
        bin_min_value = float(bin_index) * bin_width
        bin_max_value = float(bin_index + 1) * bin_width
        if bin_index == 0:
            label = '"< {0:3.1f}"'.format(bin_max_value)
        elif bin_index < len(histogram) - 1:
            label = '"[{0:3.1f};{1:3.1f})"'.format(bin_min_value, bin_max_value)
        else:
            label = '">= {0:3.1f}"'.format(bin_min_value)
        if not args.cumulative:
            frequency = float(num_occurences)
        else:
            cumulative_counter += num_occurences
            frequency = float(cumulative_counter)
        frequency /= float(num_data)
        print("{0}{1}{2}".format(label, args.SEP, frequency))

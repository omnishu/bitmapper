# Bitmap editor

Bitmap editor built in Ruby language(V 2.3.6),
Builds M x N matrix based on the following rules of inputs

## Program input
Input file is a sequence of inputs.
Input examles are in the examples directory of repo.

## Assumptions
1. Rvm is installed on the mainframe machine
2. Ruby version 2.3.6 is installed on mainframe machine

## Commands
There are 7 supported commands:
1. I M N - Create a new M x N image with all pixels coloured white (O).
2. C - Clears the table, setting all pixels to white (O).
3. L X Y C - Colours the pixel (X,Y) with colour C.
4. V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
5. H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
6. S - Show the contents of the current image


## Example
To run the application you must supply a command file like so `bin/bitmap_editor examples/show.txt`

### Input File

    I 5 6
    L 1 3 A
    V 2 3 6 W
    H 3 5 2 Z
    S


### Expected Output:

    OOOOO
    OOZZZ
    AWOOO
    OWOOO
    OWOOO
    OWOOO


# Running

```shell
ruby bin/bitmap_editor examples/show.txt
```

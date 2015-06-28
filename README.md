This is a simple ruby implementation of [Rule 110](https://en.wikipedia.org/wiki/Rule_110)

## How it works

Rule 110 is a cellular automaton (like the game of life) that has been prooven to be Turing Complete (!!!)

The rules are simple. For a given row of cells (either alive or dead), you can derive the next row by doing the following:

FOR each cell:

IF it's an edge cell (that is, it's touching the side), it's either dead or alive based on the cell directly above it

ELSE it's alive or dead based on the 3 cells above it according to the following rules:

```
+------+--------+-------+--------+
| Left | Middle | Right | Output |
+------+--------+-------+--------+
|    1 |      1 |     1 |      0 |
|    1 |      1 |     0 |      1 |
|    1 |      0 |     1 |      1 |
|    1 |      0 |     0 |      0 |
|    0 |      1 |     1 |      1 |
|    0 |      1 |     0 |      1 |
|    0 |      0 |     1 |      1 |
|    0 |      0 |     0 |      0 |
+------+--------+-------+--------+
```
(1 = alive, 0 = dead)

Repeat for as long as you want!

## How to use it

You can run:

```ruby rule110.rb```

To get a get an output like:

```
█   █  ██ █████   █  ██ █████  █  ██ █████
█  ██ █████   █  ██ █████   █ ██ █████   █
█ █████   █  ██ █████   █  ███████   █  ██
███   █  ██ █████   █  ██ ██     █  ██ ███
█ █  ██ █████   █  ██ ██████    ██ █████ █
███ █████   █  ██ █████    █   █████   ███
█ ███   █  ██ █████   █   ██  ██   █  ██ █
███ █  ██ █████   █  ██  ███ ███  ██ █████
█ ███ █████   █  ██ ███ ██ ███ █ █████   █
███ ███   █  ██ █████ ██████ █████   █  ██
█ ███ █  ██ █████   ███    ███   █  ██ ███
███ ███ █████   █  ██ █   ██ █  ██ █████ █
█ ███ ███   █  ██ █████  █████ █████   ███
███ ███ █  ██ █████   █ ██   ███   █  ██ █
█ ███ ███ █████   █  █████  ██ █  ██ █████
███ ███ ███   █  ██ ██   █ █████ █████   █
█ ███ ███ █  ██ ██████  ████   ███   █  ██
███ ███ ███ █████    █ ██  █  ██ █  ██ ███
█ ███ ███ ███   █   █████ ██ █████ █████ █
███ ███ ███ █  ██  ██   ██████   ███   ███
█ ███ ███ ███ ███ ███  ██    █  ██ █  ██ █
███ ███ ███ ███ ███ █ ███   ██ █████ █████
█ ███ ███ ███ ███ █████ █  █████   ███   █
███ ███ ███ ███ ███   ███ ██   █  ██ █  ██
█ ███ ███ ███ ███ █  ██ ████  ██ █████ ███
███ ███ ███ ███ ███ █████  █ █████   ███ █
█ ███ ███ ███ ███ ███   █ ████   █  ██ ███
███ ███ ███ ███ ███ █  ████  █  ██ █████ █
█ ███ ███ ███ ███ ███ ██  █ ██ █████   ███
```

Feel free to mess around and get different outputs by changing the number of rows, or the starting state

You can even change rule 110 to your own rule and see what happens

### PNG Output

If you're feeling more adventurous you can set up bundler (`bundle install`) and then run:

```ruby rule110_png.rb```

To get a file called rule110.png

It has a `scale_factor`, as well as a spot where you can change the colours output

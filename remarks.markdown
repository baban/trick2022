### Remarks

The following command solves a Sudoku problem in problem.txt.

```
$ ruby -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt
```

By specifying additional options, the program will generate new Sudoku puzzles.

```
$  ruby -l -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt new_problem.txt
```

You can change the problem by specifying the same file name.

```
$ ruby -l -F" " -r ./suudoku.rb -W1 -a -n entry.rb problem.txt problem.txt
```

I confirmed the following implementations and platforms:

* ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
* ruby 3.0.4p208 (2022-04-12 revision 3fa771dded) [x86_64-linux]
* ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]

### Description

This program solves Sudoku problems.

By specifying options, it also generates new problems by replacing some of the numbers in the solved problems.

Sudoku problems are written in `problem.txt`. cell are separeted by space and blank cell is expressed by '-'.

### Internals

* use all one or two character Pre-defined global variables in program. ($;, $@, $-i, and so on...)
  - In entry.rb, write problem reader and call solver function.
	- golval variables are called with meaning, even if a little aggressive.
	- I took care to use Pre-defined global global variables as few times as possible. Only $" and $-i are used 2 times.
* Sudoku solver is written in suudoku.rb.
* The reason "suudoku" is spelled in Roman characters is to increase the number of characters in the ASCII art.
* Sudoku generator algorithm is very rough. It may generate problems that cannot be solved.
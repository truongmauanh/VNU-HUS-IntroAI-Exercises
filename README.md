# VNU-HUS MAT3508 

This repository contains some examples and necessary files for some exercises from the book [Introduction to Artificial Intelligence](https://link.springer.com/book/10.1007/978-3-319-58487-4) of Wolfgang Ertel. I created the repository as a supplement to the course MAT3508 (Introduction to AI) taught at [VNU-HUS](https://hus.vnu.edu.vn).

## Required Programs

* [E theorem prover](http://wwwlehre.dhbw-stuttgart.de/~sschulz/E/E.html)
* [SWI-Prolog](https://www.swi-prolog.org)
* [GNU Prolog](http://www.gprolog.org)

## How to set up?

* Create a new repository [using this repository as a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template).
* Create your own GitHub codespace of the new repository (which may take about 5 minutes) and try the examples.
  * All `*.lop` files are for the E theorem prover and can be run with the command `bash proof.sh <filename>`. An alternative option is the command `eprover --proof-object <filename> | epclextract`. (Note that the command `eproof` described in the book is no longer available.)
  * All `*.pl` files are PROLOG programs that can be run with either `swipl` (SWI-Prolog) or `gprolog` (GNU Prolog). Some files can only be run in `gprolog`.

## Description

### Chapter 1

Create a solution for Exercise 1.1, page 20.

### Chapter 2

Create a solution for Exercise 3.5, page 37.

### Chapter 3

| File | Description |
|:-----|:------------|
| [halbgr1.lop](Chapter%203/halbgr1.lop) | Solving the mathematical example in Section 3.7 by the E theorem prover |
| [halbgr2.lop](Chapter%203/halbgr2.lop) | Improving [halbgr1.lop](Chapter%203/halbgr1.lop) by using the power of the built-in "equality" in E instead of the predicate `eq` |
| [highjump.lop](Chapter%203/highjump.lop) | Create a solution for Exercise 3.9(a), page 64 |
| [russell.lop](Chapter%203/russell.lop) | Create a solution for Exercise 3.9(b), page 64 |
| [semigroup.lop](Chapter%203/semigroup.lop) | Create a solution for Exercise 3.9(c), page 64 |

### Chapter 4

| File | Description |
|:-----|:------------|
| [tweety1.lop](Chapter%204/tweety1.lop), [tweety2.lop](Chapter%204/tweety3.lop), [tweety3.lop](Chapter%204/tweety3.lop), [tweety4.lop](Chapter%204/tweety4.lop), [tweety5.lop](Chapter%204/tweety5.lop) | Create a solution for Exercise 4.3, page 73 |

### Chapter 5

| File | Description |
|:-----|:------------|
| [rel.pl](Chapter%205/rel.pl), [rel01.pl](Chapter%205/rel01.pl), [rel02.pl](Chapter%205/rel02.pl) | Different versions of a PROLOG program to solve the family relationships example (Section 5.2). The first version is [rel.pl](Chapter%205/rel.pl). Line 8 of this version, `child(X,Z,Y) :- child(X,Y,Z).`, is a recursive definition which may cause the program to run forever. In [rel01.pl](Chapter%205/rel01.pl), this issue is resolved, but the new issue is that the symmetry of `child` as described in line 8 before is no longer given. The final version [rel02.pl](Chapter%205/rel02.pl) resolves both issues |
| [rel.lop](Chapter%205/rel.lop), [rel1.lop](Chapter%205/rel1.lop) | Create a solution for Exercise 5.4, page 88. [rel.lop](Chapter%205/rel.lop) for the query `?- descendant(clyde, karen).` and [rel1.lop](Chapter%205/rel1.lop) for the query `?- descendant(X, Y).` |
| [max.pl](Chapter%205/max.pl), [maxwCut.pl](Chapter%205/maxwCut.pl) | Illustrating the cut operation in PROLOG (Section 5.3) |
| [semigroup.pl](Chapter%205/semigroup.pl) | Create a solution for Exercise 5.1, page 88. More precisely, you will attempt to prove the equality of left- and right-neutral elements of semigroups with PROLOG and fail. Try to explain why? |
| [ones.pl](Chapter%205/ones.pl) | Create a solution for Exercise 5.5, page 88 |
| [append.pl](Chapter%205/append.pl) | A PROLOG implementation of the predicate `append(X, Y, Z)` that appends the list `Y` to the list `X` and saves the result to the list `Z` (Section 5.4) |
| [nrev.pl](Chapter%205/nrev.pl), [accrev.pl](Chapter%205/accrev.pl) | Two PROLOG implementations for the task of reversing a list. [nrev.pl](Chapter%205/nrev.pl) is an implementation of the naive reverse algorithm---which is very inefficient due to calling `append`. [accrev.pl](Chapter%205/accrev.pl) is a more efficient implementation using a temporary store, known as the *accumulator* (Section 5.4) |
| [dynamic_rel.pl](Chapter%205/dynamic_rel.pl) | A dynamic version of the PROLOG program used in the family relationships example. This is an example illustrating the use of the built-in `asserta` PROLOG predicate to insert the derived facts to the beginning of the knowledge base to avoid a repeated derivation |
| [fib.pl](Chapter%205/fib.pl), [fib01.pl](Chapter%205/fib01.pl) | Create two solutions respectively for parts (a) and (c) of Exercise 5.8, page 89 |
| [plan.pl](Chapter%205/plan.pl), [plan1.pl](Chapter%205/plan1.pl) | Fig. 5.4, the first version of a PROLOG program to solve the famous farmer-wolf-goat-cabbage problem. [plan1.pl](Chapter%205/plan1.pl) is the same as [plan.pl](Chapter%205/plan.pl) but having extra comments to explain the code in details |
| [plan2.pl](Chapter%205/plan2.pl) | Create a solution for Exercises 5.2 and 5.3, page 88 using [plan.pl](Chapter%205/plan.pl) |
| [raumplan.pl](Chapter%205/raumplan.pl) | Fig. 5.5, A GNU-PROLOG program for solving the room scheduling problem in Example 5.2. This is also an example illustrating the use of *Constraint Logic Programming (CLP)* |
| [einstein.pl](Chapter%205/einstein.pl) | Create a solution for Exercise 5.9, page 89 |

### Chapter 6

* Create a solution for Exercise 6.6, page 123.
* Create a solution for Exercise 6.12, page 123.

## Additional Resources

* [Learn Prolog Now!](https://www.let.rug.nl/bos/lpn//lpnpage.php?pageid=online)

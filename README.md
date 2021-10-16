# khermiscLaTeX
A LaTeX package that provides commands for frequently used symbols in mathematics, mostly with a focus on mathematical statistics.
The package has two main features:

1. It provides an accessible interface for commonly used symbols, and most importantly
1. it uses the `xparse` package to provide overloaded versions of commonly used functions.

Using overloaded functions leads to a simplified and intuitive syntax.
For example, considering the probability of an event there are a number of frequently used notations:

1. ℙ (probability),
1. ℙ(A) (probability of event A),
1. ℙ<sub>X</sub> (law of random varialbe X), and
1. ℙ<sub>X</sub>(B) (probability of event B under the law of X).

Using the package we can typeset those options with optional/empty arguments as follows:
1. `\Prob`: ℙ,
1. `\Prob{A}`: ℙ(A),
1. `\Prob{}{X}`: ℙ<sub>X</sub>, and
1. `\Prob{B}{X}`: ℙ<sub>X</sub>(B).

In the same manner the package implements a number of frequently used functions/operators such as norms, expectation, variance, covariance, standard deviation, etc.
See <a href="LatexDefinitionTable.pdf">LatexDefinitionTable.pdf</a> for a full list of symbols and their respective LaTeX commands by categories (see Package options).

## Package options
The available symbols are grouped by different subjects.

1. `laws`: Probability laws of distribution functions (normal, exponential, Bernoulli, ...)
1. `sets`: Notation for sets (ℕ, ℤ, ℚ, ℝ, ℂ, ...)
1. `measure`: Measure theory (Borel sigma field, Lebesgue measure, ...)
1. `prob`: Probability (expectation, independence, convergence in probability, ...)
1. `real`: Real analysis (Euler's number, argmin, norm, indicator function, ...)
1. `complex`: Complex analysis (imaginary number, real and imaginary part, ...)
1. `bold`: Bold symbols Latin and Greek
1. `cal`: Calligraphic symbols Latin

## Installation
Just like any other LaTeX package, the file can be included using `\usepackage{khermisc}` in the preamble with the relevant options in square brackets, for example, `\usepackage[complex]{khermisc}`.
To use the package the file has to be either in the same directory as the LaTeX file, or in a central location where the `sty` files are stored.
On Ubuntu-Linux with a standard TeX Live installation the location could, for example, be `/usr/share/texlive/texmf-dist/tex/latex/khermisc/khermisc.sty`.

## Includes
The package loads the following packages via `\RequirePackage`:

1. `amsmath`
1. `amsfonts`
1. `bm`
1. `calligra`
1. `mathrsfs`
1. `dsfont`
1. `xparse`

## Contribute
To add a new symbol one needs to
1. define the symbol in the `sty` file, and then
1. add an entry to the `khermisc_symbolList.xml` file.
1. Then one needs to run `createDefinitionTables.sh` to produce the LaTeX `LatexDefinitionTable.tex` file.
1. Finally, this needs to be compiled and the resulting `LatexDefinitionTable.pdf` needs to be added to the repository.

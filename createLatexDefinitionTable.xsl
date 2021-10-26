<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--

xsltproc createLatexDefinitionTable.xsl symbolList.xml > LatexDefinitionTable.tex

Program flow:
invited talk yes/no
|-> yes: check dates one day, different months same months. In all cases we print misc at the end if it is not empty
|-> no: check dates one day, different months same months. Print type (contributed talk etc) if not empty, in all cases we print misc at the end if it is not empty
-->
<xsl:output method="text"/>
<xsl:template match="/">
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{longtable}
\usepackage[laws,sets,measure,complex,real,prob,bold,cal]{khermisc}
\begin{document}
\author{Klaus Herrmann}
\title{Documentation: \emph{khermisc.sty}}
\maketitle
\section*{Symbols defined in \emph{khermisc}}
The defined symbols are grouped by different areas of mathematics (as far as such a grouping is possible) and can be made available by enabling the options of the package.
This allows to only import the definitions and commands that are needed for a specific project.
The overloaded syntax is made possible by using \verb+\NewDocumentCommand+ of the \emph{xparse} package, and as such optional parameters for the commands are in square brackets and come before the mandatory parameters in curly brackets.
For exampe, in case of the indicator function it is mandatory to supply a set as an argument, while an evaluation point is optional.
The usage is therefore \verb+\ind{A}+ for the function $\ind{A}$, while \verb+\ind[x]{A}+ adds the evaluation point $\ind[x]{A}$.

\subsection*{General symbols - available by default}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/general/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{sets}}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/sets/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{real}}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/real/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{complex}}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/complex/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{measure}}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/measure/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{prob}}
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/probability/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{bold}}
Bold symbols for the Latin and Greek alphabet.
Bold symbols basically follow the pattern \verb!\b+LETTER!.
However, for some symbols this pattern leads to already reserved keywords.
For bold $f$, $m$ and $\eta$ we therefore have \verb!\bbf!, \verb!\bbm! and \verb!\bfeta!. 
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/bold/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}

\subsection*{Symbols in option \emph{cal}}
Calligraphic letter for the Latin alphabet.
Calligraphic symbols follow the pattern \verb!\cal+LETTER!.
\begin{longtable}{lll}
\textbf{Symbol} &amp; \textbf{Name} &amp; \textbf{Definition}\\
<xsl:for-each select="KHSymbolList/cal/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}






\subsection*{Symbols in option \emph{laws}}
Symbols for probability laws follow a \textbf{\textsf{R}} type syntax \verb!\l+NAME!.
\begin{longtable}{lll}
Symbol &amp; Name &amp; Definition\\
<xsl:for-each select="KHSymbolList/laws/symbol">$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>%\\</xsl:for-each>
\end{longtable}
\end{document}
</xsl:template>
</xsl:stylesheet>
<!--
$<xsl:value-of select="@formula"/>$ &amp; <xsl:value-of select="@eng"/> &amp; \verb%<xsl:value-of select="@formula"/>% 
-->



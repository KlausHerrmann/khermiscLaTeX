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
\section*{Symbols defined in \emph{khermisc}}

\subsection*{General symbols}
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
Symbols for probability laws follow a R type syntax \verb!\l+NAME!.
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



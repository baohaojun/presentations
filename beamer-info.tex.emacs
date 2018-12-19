% Created 2018-12-19 水 16:52
% Intended LaTeX compiler: pdflatex
\documentclass[presentation]{beamer}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage[export]{adjustbox}
\usepackage{lmodern}
\usepackage{grffile}
\usepackage{longtable}
\usepackage{wrapfig}
\usepackage{rotating}
\usepackage[normalem]{ulem}
\usepackage{amsmath}
\usepackage{textcomp}
\usepackage{amssymb}
\usepackage{capt-of}
\usepackage{hyperref}
\usepackage{minted}
\usetheme{Madrid}
\author{Carsten Dominik}
\date{\today}
\title{Example Presentation}
\hypersetup{
 pdfauthor={Carsten Dominik},
 pdftitle={Example Presentation},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 26.1 (Org mode 9.1.9)}, 
 pdflang={English}}
\begin{document}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}


\section{This is the first structural section}
\label{sec:org10d1298}

\begin{frame}[label={sec:org1f8d2e9}]{Frame 1}
\begin{columns}
\begin{column}{0.48\columnwidth}
\begin{block}<2->{Thanks to Eric Fraga}
for the first viable Beamer setup in Org
\end{block}
\end{column}
\begin{column}{0.48\columnwidth}
\begin{block}{Thanks to everyone else}
for contributing to the discussion
\end{block}
\end{column}
\end{columns}
\begin{block}<3->{Thanks to everyone else}
for contributing to the discussion

\note{This will be formatted as a beamer note
}
\end{block}
\end{frame}
\begin{frame}[label={sec:orga525120}]{Frame 2 (where we will not use columns)}
\begin{block}{Request}
Please test this stuff!
\end{block}
\end{frame}
\end{document}

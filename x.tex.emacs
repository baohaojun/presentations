% Created 2021-02-24 Wed 16:31
% Intended LaTeX compiler: pdflatex
\documentclass[presentation]{beamer}
\usepackage{bxdpx-beamer}
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
\usetheme{Berkeley}
\usecolortheme{lily}

\date{\today}


\hypersetup{
 pdfauthor={Carsten Dominik},
 pdftitle={Example Presentation},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 27.1 (Org mode 9.3)},
 pdflang={English}}
\begin{document}

\title{Example Presentation}
\subtitle{hello world}
\author{Carsten Dominik}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}



\section{This is the first structural section}
\label{sec:org2be668a}

\begin{frame}[label={sec:org248ab72}]{Frame 1}
\begin{columns}
\begin{column}{0.48\columnwidth}
\begin{block}{Thanks to Eric Fraga}
for the first viable Beamer setup in Org
\end{block}
\end{column}
\begin{column}{0.48\columnwidth}
\begin{block}<2->{Thanks to everyone else}
for contributing to the discussion
\note{This will be formatted as a beamer note
}
\end{block}
\end{column}
\end{columns}
\end{frame}
\begin{frame}[label={sec:org379d8a1}]{Frame 2 (where we will not use columns)}
\begin{block}{Request}
Please test this stuff!
\end{block}
\end{frame}
\end{document}

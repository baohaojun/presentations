% Created 2021-02-18 Thu 09:09
% Intended LaTeX compiler: pdflatex
\documentclass[presentation,dvipdfmx,CJKbookmarks]{beamer}
\usepackage{bxdpx-beamer}
\usepackage{CJKutf8}
\usepackage{atbegshi}
\AtBeginShipoutFirst{\special{pdf:tounicode UTF8-UTF16}} % for UTF-8
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
\usetheme{EastLansing}
\usecolortheme{default}

\date{2021-02-14}


\hypersetup{
 pdfauthor={包昊军},
 pdftitle={seL4 介绍},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 27.1 (Org mode 9.3)},
 pdflang={English}}
\begin{document}

\title{seL4 介绍}
\subtitle{一个被形式化验证的安全微内核}
\author{包昊军}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}

\CJKtilde

\section{seL4 简介}
\label{sec:org4af9569}
\begin{frame}[label={sec:org4eb460e}]{微内核}
\begin{center}
\includegraphics[width=.9\linewidth]{./images/micro-kernel-structure.ps}
\end{center}
\end{frame}

\begin{frame}[label={sec:orga023638}]{基于 capbilities 的安全特性}
\begin{block}{Posix 模型}
\begin{itemize}
\item syscall open file X

操作系统提供权限检查
\item client -> server open file X

client 对 X 是否有操作权限，操作系统无法强制
\end{itemize}
\end{block}

\begin{block}{Caps 模型}
针对所有资源的操作，均需提供 caps 证明拥有权限
\end{block}
\end{frame}

\section{seL4 项目}
\label{sec:org1f9d8e9}
\begin{frame}[label={sec:org4b80ab6}]{seL4 官方项目}
\begin{block}{\href{https://docs.sel4.systems/projects/buildsystem/host-dependencies.html}{编译环境准备}}
\end{block}
\begin{block}{sel4-tutorials（入门教程）}
\begin{description}
\item[{github}] \url{https://github.com/seL4/sel4-tutorials}
\item[{文档}] \url{https://docs.sel4.systems/Tutorials/}
\end{description}
\end{block}
\begin{block}{sel4test（unit tests and more）}
\begin{description}
\item[{github}] \url{https://github.com/seL4/sel4test}
\end{description}
\end{block}

\begin{block}{sel4-camkes（微内核嵌入式系统的组件化架构）}
\begin{description}
\item[{文档}] \url{https://docs.sel4.systems/projects/camkes/manual.html}
\end{description}
\end{block}
\end{frame}

\begin{frame}[label={sec:org28d11c9}]{seL4 社区项目}
\begin{block}{genode on sel4}
\begin{itemize}
\item 一个开源的「操作系统框架」
\item sel4 移植的过程写了 3 篇文章
\begin{enumerate}
\item \href{https://genode.org/documentation/articles/sel4\_part\_1}{两个交替执行计算和打印的线程}
\item \href{https://genode.org/documentation/articles/sel4\_part\_2}{IPC 和虚拟内存实验}
\item \href{https://genode.org/documentation/articles/sel4\_part\_3}{移植核心组件}
\end{enumerate}
\end{itemize}
\end{block}
\begin{block}{\href{https://github.com/PolySync/cargo-fel4}{fel4}}
\begin{itemize}
\item 直接在 sel4 上运行嵌入式 rust 程序
\item 项目已过时，需要修改源码之后才能运行
\end{itemize}
\end{block}
\begin{block}{\href{https://gitlab.com/arm-research/security/icecap/icecap/}{icecap}}
\begin{itemize}
\item Arm Research 的 sel4 rust 项目
\end{itemize}
\end{block}
\end{frame}

\begin{frame}[label={sec:orgc9b1554}]{项目中使用组件框架的建议}
\begin{block}{seL4 API 易用性差（重点在于形式化验证）}
\end{block}
\begin{block}{所以需要使用组件框架，重点关注业务逻辑}
\end{block}
\begin{block}{两个主要的组件框架：camkes 和 genode}
\begin{itemize}
\item camkes 主要用于静态系统：组件预定义，启动之后不再变化
\item genode 更强大通用，但无法使用 sel4 全部安全特性
\end{itemize}
\end{block}
\end{frame}

\section{sel4 研究方向}
\label{sec:org64b04d4}
\begin{frame}[label={sec:orgd7cde23}]{\href{https://ts.data61.csiro.au/students/theses.pml.html}{研究项目}}
\begin{itemize}
\item 多核、IPC 性能优化
\item Secure, Android-based OS for IoT
\item \href{https://ts.data61.csiro.au/projects/TS/realtime.pml.html}{seL4 AUTOSAR}
\item Shared resources in an microkernel-based OS（用 camkes 实现文件系统、网络协议栈）
\item Linux as a component（camkes-vm）
\end{itemize}
\end{frame}
\begin{frame}[label={sec:orge470937}]{\href{https://github.com/seL4/docs/blob/master/SuggestedProjects.md}{Github 项目建议}}
\begin{itemize}
\item 移植 minix3 到 sel4
\end{itemize}
\end{frame}


\section{sel4 动态}
\label{sec:org9d71d1a}
\begin{frame}[label={sec:org6b324dd}]{sel4 动态}
\begin{itemize}
\item 2020 年 4 月，成立 seL4 基金会，由 Linux 基金会托管（\href{https://microkerneldude.wordpress.com/2020/04/07/the-sel4-foundation-what-and-why/}{sel4 原作者博客}）
\item 2021 年 2 月，FOSDEM 2021
\end{itemize}
\end{frame}
\begin{frame}[label={sec:orgba63180}]{sel4 RFC}
\begin{center}
\includegraphics[width=.9\linewidth]{./images/rfc-for-core.ps}
\end{center}
\begin{itemize}
\item Core、Core Platform
\end{itemize}
\end{frame}

\begin{frame}[label={sec:org8174bdd}]{sel4 multi-server OS}
\begin{center}
\includegraphics[width=.9\linewidth]{./images/multi-server.os.ps}
\end{center}
\end{frame}

\begin{frame}[label={sec:orgb78d56d}]{sel4 multi-server OS}
\begin{center}
\includegraphics[width=.9\linewidth]{./images/multi-server.os.2.ps}
\end{center}
\end{frame}
\section{参考链接}
\label{sec:org42eda07}
\begin{frame}[label={sec:org0bf4249}]{参考链接}
\begin{itemize}
\item \href{https://sel4.systems/About/seL4-whitepaper.pdf}{白皮书}
\end{itemize}
\end{frame}
\end{document}

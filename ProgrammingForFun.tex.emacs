% Created 2018-12-19 水 22:31
% Intended LaTeX compiler: pdflatex
\documentclass[presentation,dvipdfmx,CJKbookmarks]{beamer}
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
\usetheme{Boadilla}
\usecolortheme{crane}
\author{Bao Haojun}
\date{2015-11-20}
\title{Programming for Fun}
\hypersetup{
 pdfauthor={Bao Haojun},
 pdftitle={Programming for Fun},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 26.1 (Org mode 9.1.9)}, 
 pdflang={English}}
\begin{document}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}

\CJKtilde

\section{Wishful Thinking}
\label{sec:orgcc56fa3}

\begin{frame}[fragile,label={sec:org44f2b85}]{SICP 介绍（Structure and Interpretation of Computer Programs）}
 \begin{block}{怎么定义有理数及其各种运算？}
\end{block}
\begin{block}{很简单，假设我们有 3 个函数：\texttt{ｍａｋｅ－有理数}，\texttt{取分母}，\texttt{取分子}}
\end{block}
\begin{block}{举例：有理数乘法}
\begin{minted}[]{common-lisp}
(ｄｅｆｕｎ 有理数乘法 (有理数ａ 有理数ｂ)
  (ｍａｋｅ－有理数
   (* (取分子 有理数ａ) (取分子 有理数ｂ))
   (* (取分母 有理数ａ) (取分母 有理数ｂ))))
\end{minted}
\end{block}
\end{frame}

\begin{frame}[label={sec:orgb84cf5c}]{Get Things Done 工作方法}
\begin{itemize}
\item Coders at Work 中对 jwz 的采访

“我就是列个单子，然后一项一项的划掉”

\begin{center}
\includegraphics[width=3cm]{./jwz.ps}
\end{center}

\item org-mode 演示（agenda 功能）

\begin{center}
\includegraphics[width=3cm]{./org-mode.ps}
\end{center}
\end{itemize}
\end{frame}

\begin{frame}[label={sec:org6de450a}]{Literate Programming}
\begin{itemize}
\item Knuth 的工作方法

\begin{center}
\includegraphics[height=3cm]{./knuth.ps}
\end{center}

\item org-mode 演示（knuth-mode）

\begin{center}
\includegraphics[width=3cm]{./org-mode.ps}
\end{center}
\end{itemize}
\end{frame}

\section{Abstraction}
\label{sec:org784d023}

\begin{frame}[label={sec:orgedc3c81}]{REPL（Read、Eval、Print、Loop）}
\begin{block}{Read}
\end{block}
\begin{block}{Eval}
\begin{itemize}
\item 注意求值的次数限制（只能求一次）
\begin{itemize}
\item 有些值求一次和求 N 次都是一样的
\item 除此之外，不能随意求多次（如果想求多于一次，必须明确指定——比如用 eval 函数）
\item 左值和右值
\end{itemize}
\end{itemize}
\end{block}

\begin{block}{Print}
\end{block}
\begin{block}{Loop}
\end{block}
\end{frame}

\section{Style}
\label{sec:org7fd2dd7}

\begin{frame}[fragile,label={sec:orgc3738dc}]{编码风格（规范）与表达沟通}
 \begin{itemize}
\item 跳过所有语言、社区、公司的编码风格
\item The Elements of Style（所有编程语言风格书致敬的对象）
\item If you don't know how to pronounce a word, say it loud！Why compound ignorance with inaudibility？

-- E.B. White，The Elements of Style 的作者之一，著有“夏洛特的网”

\begin{itemize}
\item 个人而言，直接决定了我最喜欢的编程语言特性，是 shell 的“set -e”
\item 或许我们应该学习 APUE 的作者的做法？他把每一个常用库函数，都自己封装了一下，比如 \texttt{close(fd) -> Close(fd)}，一旦发现错误返回值就退出
\item 我在 AOSP 上进的一个 \href{https://android.googlesource.com/platform/frameworks/av/+/5225ba0\%255E\%2521/\#F1}{patch}，就是没有检查 close 的返回值导致没有及时发现问题
\item 不要让自己猜，也不要让别人猜\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/iphone-new/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png}}
\begin{itemize}
\item 比如 saveFile() 一百遍以确保 save 成功这种操作
\end{itemize}
\item 波尔和费曼的故事，开会之前，先找费曼聊
\end{itemize}
\end{itemize}
\end{frame}

\section{Flow}
\label{sec:org69d5bf6}

\begin{frame}[label={sec:org53042b5}]{}
\begin{block}{Flow 的模型}
\begin{center}
\includegraphics[width=4cm]{./images/flow.ps}
\end{center}

\begin{itemize}
\item 集中营里有人能活下来的秘密
\item 截了肢的人还能觉得自己比以前还幸福的秘密
\item “偏执于有用的细节，偏执于无用的细节，偏执于甚至不会被发现是有用还是无用的细节，这就是工匠精神”
\item “On Writing”一书作者的故事
\item Be Water My Friend -- Bruce Lee.
\end{itemize}
\end{block}
\end{frame}

\section{领导、决策与系统}
\label{sec:org32c1d51}

\begin{frame}[label={sec:org88f7e54}]{关于原子弹研发过程中保密与安全决策的故事}
\begin{itemize}
\item 绝密任务，不能让纳粹知道消息
\begin{itemize}
\item 不告诉工人自己天天处理的是什么
\end{itemize}
\item 非常危险，万一超过“临界质量”的原料堆在一起，引发连锁反应。。。
\item 最后找一个上校报告，上校说，给我 5 分钟时间
\end{itemize}
\end{frame}

\begin{frame}[label={sec:orgb0541c1}]{关于决策系统的思考}
\begin{itemize}
\item 5 分钟就做一个决定？
\item 决定的影响有多深远？

\begin{itemize}
\item 推荐 The Fifth Discipline
\end{itemize}
\end{itemize}
\end{frame}

\section{文档和源码}
\label{sec:org6f3bf16}

\begin{frame}[label={sec:orgcd4441b}]{}
\begin{block}{man 手册中的搜索、Text::CSV 中的 imenu}
\end{block}
\begin{block}{info 手册中的搜索}
\end{block}
\begin{block}{源码搜索：beagrep}
\end{block}
\end{frame}

\section{参考书目}
\label{sec:org91e8080}

\begin{frame}[label={sec:org129ec25}]{}
\begin{itemize}
\item Coders at Work
\item The Fifth Discipline: The Art \& Practice of the Learning Organization
\item Flow: The Psychology of Optimal Experience
\item SURELY YOU ARE JOKING, MR. FEYNMAN!
\end{itemize}
\end{frame}
\end{document}

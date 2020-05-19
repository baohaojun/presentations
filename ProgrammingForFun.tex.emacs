% Created 2020-05-19 火 20:00
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
\author{Bao Haojun}
\date{2019-12-31}
\title{Programming for Fun}
\subtitle{做一个快乐编程的文艺青年\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/weibo-new/ErHa.png}}}
\hypersetup{
 pdfauthor={Bao Haojun},
 pdftitle={Programming for Fun},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 27.0.91 (Org mode 9.3)},
 pdflang={English}}
\begin{document}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}

\CJKtilde

\section{Wishful Thinking（许愿式编程）}
\label{sec:orgb8958da}

\begin{frame}[label={sec:orgeddc254},fragile]{SICP 介绍（Structure and Interpretation of Computer Programs）}
 \pause
\begin{block}{\sout{一个小目标？先挣他一个亿？}}
\pause
\end{block}
\begin{block}{怎么定义有理数及其各种运算？}
\pause
\begin{itemize}[<+->]
\item 很简单，假设我们有 3 个函数：\texttt{ｍａｋｅ－有理数}，\texttt{取分母}，\texttt{取分子}
\item 举例：有理数乘法

\begin{minted}[]{common-lisp}
(ｄｅｆｕｎ 有理数乘法 (有理数ａ 有理数ｂ)
  (ｍａｋｅ－有理数
   (* (取分子 有理数ａ) (取分子 有理数ｂ))
   (* (取分母 有理数ａ) (取分母 有理数ｂ))))
\end{minted}
\end{itemize}
\end{block}
\end{frame}

\begin{frame}[label={sec:org1b2988e}]{Get Things Done 工作方法}
\pause
\begin{itemize}[<+->]
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

\begin{frame}[label={sec:org9a5c6cc}]{Literate Programming（文艺青年的编程方法）}
\begin{itemize}[<+->]
\item Knuth 的工作方法

\begin{center}
\includegraphics[height=3cm]{./knuth.ps}
\end{center}

\item org-mode 演示（knuth-mode）
\item GTD/LP：不焦虑的秘密
\item 盗梦空间（fence-edit-mode）
\end{itemize}
\end{frame}

\section{Abstraction}
\label{sec:org6df763a}

\begin{frame}[label={sec:org4b34056}]{一本书：How to Design Programs}
\pause
\begin{block}{Abstraction（抽） \& Similarity（象）}
\pause
\end{block}
\begin{block}{Similarity \& Copying \& Problems}
\pause
\begin{itemize}
\item 有一个功能很好用，在别的地方，我也想要类似的功能（抽象 + wishing）
\begin{itemize}
\item Demo：Firefox 地址选择，命令行选择，跳板机选择
\end{itemize}
\end{itemize}
\pause
\end{block}
\begin{block}{Similarity \& Learning \& Oppotunities}
\begin{itemize}
\item 对比学习不同编程语言
\item 重复的就是最像的（refactory）
\end{itemize}
\end{block}
\end{frame}

\begin{frame}[label={sec:orgde23a30},fragile]{REPL（Read、Eval、Print、Loop）}
 \begin{block}{什么是 REPL}
\begin{itemize}
\item 所有交互式编程语言环境共有的一种模式
\item 理解 REPL，用 REPL 去套，有助于编程语言学习
\end{itemize}
\end{block}
\begin{block}{关于 REPL 需注意的地方}
\begin{itemize}
\item 注意求值的次数限制（只能求一次）
\begin{itemize}
\item 有些值求一次和求 N 次都是一样的（atoms）
\item 除此之外，不能随意求多次（如果想求多于一次，必须明确指定——比如用 eval 函数）
\texttt{x=y; y=z; echo \$x} => y? z?
\end{itemize}
\item 经常会碰到需要多次求值的情况！（比如，xml + html + org-mode）
\item 不要随意进出『盗梦空间』\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/iphone-new/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png}}
\item 有疑惑时，\alert{严格} 按编程语言的游戏规则来
\end{itemize}
\end{block}
\end{frame}

\section{Style}
\label{sec:orge1424c0}

\begin{frame}[label={sec:org88488d1},fragile]{编码风格（规范）与表达沟通}
 \begin{itemize}[<+->]
\item 跳过所有语言、社区、公司的编码风格（太多了\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/new-emojis/ali-66-GuiLe.png}}）
\item The Elements of Style（很简单、所有编程语言风格书致敬的对象）
\item If you don't know how to pronounce a word, say it loud！Why compound ignorance with inaudibility？
\begin{itemize}
\item -- E.B. White，The Elements of Style 的作者之一，著有“夏洛特的网”
\item 不要尝试隐藏问题，要及早暴露问题，这样比较简单
\item 个人而言，直接决定了我最喜欢的编程语言特性，是 shell 的“set -e”
\item 或许我们应该学习 APUE 的作者的做法？他把每一个常用库函数，都自己封装了一下，比如 \texttt{close(fd) -> Close(fd)}，一旦发现错误返回值就退出
\end{itemize}

\begin{itemize}
\item 波尔和费曼的故事：开会之前，先找费曼聊
\end{itemize}
\end{itemize}
\end{frame}

\section{Flow}
\label{sec:org41f28eb}

\begin{frame}[label={sec:orge595e17}]{}
\begin{block}{Flow 的模型}
\begin{center}
\includegraphics[width=4cm]{./images/flow.ps}
\end{center}
\pause
\begin{itemize}[<+->]
\item 集中营里有人能活下来？
\item 截了肢的人还能觉得自己比以前还幸福？
\item “偏执于有用的细节，偏执于无用的细节，偏执于甚至不会被发现是有用还是无用的细节，这就是工匠精神”
\item “On Writing”一书作者的故事
\item Be Water My Friend -- Bruce Lee.
\end{itemize}
\end{block}
\end{frame}

\section{领导、决策与系统}
\label{sec:orgbf05a1e}

\begin{frame}[label={sec:orgfa80e14}]{原子弹研发的保密和安全}
\begin{itemize}
\item 绝密任务，不能让纳粹知道消息
\begin{itemize}
\item 不告诉工人自己天天处理的是什么
\end{itemize}
\item 非常危险，万一超过“临界质量”的原料堆在一起，引发连锁反应。。。
\item 最后找一个上校拍板，上校说，给我 5 分钟时间
\end{itemize}
\end{frame}

\begin{frame}[label={sec:orgf5d3b0b}]{关于决策系统的思考}
\begin{itemize}
\item 5 分钟就做一个决定？
\item 决定的影响有多深远？
\begin{itemize}
\item 推荐阅读：The Fifth Discipline
\end{itemize}
\item 做决策，最关键的是什么？
\pause
\begin{itemize}
\item 承担责任
\end{itemize}
\item 决策和迷信
\begin{itemize}
\item 决定变量名时，为什么要起得特别短？
\begin{itemize}
\item 这样更酷，因为老一辈的黑客都这么干？那时候穷，内存小\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/iphone-new/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png}}
\item 这样更省力？写得省力了，读的时候呢？
\item bbyac demo
\end{itemize}
\end{itemize}
\end{itemize}
\end{frame}

\section{学习，通过编程来学习}
\label{sec:orga8186c8}

\begin{frame}[label={sec:org649b9b6}]{}
\begin{block}{man 手册中的搜索、Text::CSV 中的 imenu}
\end{block}
\begin{block}{info 手册中的搜索}
\end{block}
\begin{block}{源码搜索：beagrep}
\end{block}
\begin{block}{抄书式学习（\href{https://www.zhihu.com/question/28951394}{章亦春}） => 编辑式学习 => 快捷短语}
\end{block}
\end{frame}

\section{2019 年我的开源项目}
\label{sec:org7ee26d3}
\begin{frame}[label={sec:org9c25325}]{2019 年我的开源项目}
\begin{enumerate}
\item org-kungfu 和 jkd（用 emacs + cli 操作 altassian 软件）
\item cuty（个人成长辅助集中注意力软件）
\item 用 emacs 聊钉钉
\item 简陋密码管理软件
\item 快捷短语输入（Stallman 的故事）
\begin{itemize}
\item jira 文档 url 地址
\item ldap 查询人名
\item 输入快递信息
\end{itemize}
\end{enumerate}
\end{frame}

\section{参考书目}
\label{sec:org7949b56}

\begin{frame}[label={sec:org5acd3ec}]{}
\begin{itemize}
\item Coders at Work
\item SICP
\item HtDP
\item The Elements of Style
\item The Fifth Discipline: The Art \& Practice of the Learning Organization
\item Flow: The Psychology of Optimal Experience
\item SURELY YOU ARE JOKING, MR. FEYNMAN!
\end{itemize}
\end{frame}
\section{Q \& A}
\label{sec:org9a19001}
\begin{frame}[label={sec:org7816a48}]{Q \& A}
\begin{block}{Questions\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/qq-emojis/smiley_32.png}}}
\pause
\end{block}
\begin{block}{祝大家新年快乐！}
\pause
\end{block}
\begin{block}{记得许愿哦！}
\end{block}
\end{frame}
\end{document}

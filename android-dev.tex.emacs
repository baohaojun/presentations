% Created 2019-11-19 火 10:02
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
\usetheme{Berkeley}
\usecolortheme{lily}
\author{包昊军（钧钩）}
\date{2014-01-20}
\title{Android 网络和数据\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/new-emojis/ali-29-HeiHei.png}}}
\hypersetup{
 pdfauthor={包昊军（钧钩）},
 pdftitle={Android 网络和数据\text{\includegraphics[width=1em,valign=t,raise=0.1em]{/home/bhj/src/github/Wrench/release/emojis/new-emojis/ali-29-HeiHei.png}}},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 26.3 (Org mode 9.1.9)},
 pdflang={English}}
\begin{document}

\maketitle
\begin{frame}{Outline}
\tableofcontents
\end{frame}

\CJKtilde

\section{回顾}
\label{sec:org4d40284}

\begin{frame}[label={sec:org7ca08fb}]{上节内容}
\begin{block}{ListView \& Adapter}
\end{block}
\begin{block}{实现 banner 和列表视图 List 的同时滑动}
\end{block}
\begin{block}{删除列表中一行}
\end{block}
\begin{block}{双列列表}
\end{block}
\end{frame}

\begin{frame}[label={sec:org757b827}]{往期回顾}
\begin{block}{Android 系统和环境}
\end{block}
\begin{block}{Activity 等四大组件}
\end{block}
\begin{block}{ListView}
\end{block}
\end{frame}
\section{工具}
\label{sec:orgb17983e}
\begin{frame}[label={sec:orge5fb37d}]{粗野的 Beagrep}
\begin{block}{Grep 9G Android 代码，只需 0.23 秒}
\end{block}
\begin{block}{阅读源代码的利器之一}
\end{block}
\end{frame}
\begin{frame}[label={sec:org1008e00}]{精细的 grep-gtags}
\begin{block}{综合了 ctags (exuberant）、gtags、cscope}
\end{block}
\begin{block}{可以与 beagrep 组合使用，获取函数调用位置}
\end{block}
\begin{block}{可以定位 png 文件，xml 元素，这些也是源代码:-)}
\end{block}
\end{frame}
\begin{frame}[label={sec:orgc672857}]{搞笑的 Ajoke}
\begin{block}{主要在使用 grep-gtags 和一些自制脚本}
\end{block}
\begin{block}{可以打印继承树}
\begin{itemize}
\item 目前不可以打印倒继承树
\end{itemize}
\end{block}
\begin{block}{可以补齐函数}
\end{block}
\begin{block}{可以自动 import}
\end{block}
\begin{block}{可以重载函数}
\end{block}
\begin{block}{将来会支持 Exception}
\end{block}
\end{frame}
\begin{frame}[label={sec:orgb24131a}]{可怕的 skeleton-complete.el}
\begin{block}{打几个字符（骨架），补全整字、整句、整行、整段（血肉）}
\end{block}
\begin{block}{其实 firefox 也有类似的功能}
\end{block}
\begin{block}{Java IDE 神器 IntelliJ IDEA 也有类似的功能}
\end{block}
\end{frame}

\begin{frame}[label={sec:org9a576c5}]{yasnippet}
\begin{block}{另一个非常强大的补齐展开工具}
\end{block}
\begin{block}{用起来更正式，需要提前准备好展开脚本}
\end{block}
\end{frame}

\section{网络}
\label{sec:org4ac40a5}
\begin{frame}[label={sec:orgaca18fb}]{网络编程介绍}
\begin{block}{Socket（套接字）}
\begin{itemize}
\item Tcp，Udp，Unix Domain
\item 我的输入法编程
\end{itemize}
\end{block}

\begin{block}{HTTP 通讯}
\begin{itemize}
\item HttpURLConnection （Android 原生，性能更好）
\item DefaultHttpClient （apache 代码，早期 bug 较少）
\end{itemize}
\end{block}

\begin{block}{WebView}
\begin{itemize}
\item 频繁变化，或轻交互
\end{itemize}
\end{block}
\end{frame}


\begin{frame}[label={sec:orgdd0c634}]{小练习}
\begin{block}{获取一段 JSON 数据 (MainActivity1)}
\begin{itemize}
\item AllIn4Demo 代码位置
\url{http://10.125.206.165/allin4.zip}
\end{itemize}
\end{block}
\begin{block}<2->{会出错}
\end{block}
\end{frame}
\begin{frame}[label={sec:org0e65b44}]{UI 主线程和联网线程}
\begin{block}{Android 编程中，需要牢记：}
\begin{itemize}
\item 要区分开 UI 主线程和工作线程
\end{itemize}
\end{block}

\begin{columns}
\begin{column}{0.4\columnwidth}
\begin{block}{Android 网络操作必须用工作线程}
\end{block}
\end{column}
\begin{column}{0.4\columnwidth}
\begin{block}<2->{会阻塞，导致无响应}
\end{block}
\end{column}
\end{columns}
\begin{columns}
\begin{column}{0.4\columnwidth}
\begin{block}{工作线程不允许操作 UI 元素}
\end{block}
\end{column}
\begin{column}{0.4\columnwidth}
\begin{block}<3->{操作 UI 元素的 API 都是线程不安全的，只能在一个线程中调用以保证线程安全}
\end{block}
\end{column}
\end{columns}
\end{frame}

\begin{frame}[label={sec:orgde651bf}]{工作线程与 UI 主线程间通信}
\begin{block}{runOnUiThread}
\begin{itemize}
\item 工作线程中调用操作 UI 元素的 Callback 函数
\end{itemize}
\end{block}
\begin{block}{Handler}
\begin{itemize}
\item 工作线程发送消息，UI 线程处理消息
\item 当然 UI 线程也可以给自己发消息
\end{itemize}
\end{block}

\begin{block}{AsyncTask}
\begin{itemize}
\item 更好的封装，有准备、运行（进度）、结果三个阶段
\end{itemize}
\end{block}
\end{frame}

\begin{frame}[fragile,label={sec:org68d6391}]{runOnUiThread}
 \begin{minted}[]{java}
// In UI thread:
new Thread(new Runnable() {
   @Override
   public void run() {
     // do some work in working thread
     runOnUiThread(new Runnable() {
       @Override
       public void run() {
         // manipulate the UI elements
         // within runOnUiThread
         mTextView.setText(mGetJsonHelper.result);
       }
     });
   }
}).start();
\end{minted}
\end{frame}

\begin{frame}[fragile,label={sec:org9d1fa4a}]{Handler}
 \begin{minted}[]{java}
Handler mHandler = new Handler() {
  public void handleMessage(Message msg) {
    switch (msg.what) { ... }
    super.handleMessage(msg);
  }
};
new Thread(new Runnable() {
   public void run() {
     // do something in working thread
     Message message = new Message();
     message.what = 1;
     message.setData(Bundle b);
     mHandler.sendMessage(message);
   }
}).start();
\end{minted}
\end{frame}

\begin{frame}[fragile,label={sec:orgbf2c7bd}]{AsyncTask}
 \begin{minted}[]{java}
private class MyAsyncTask
 extends AsyncTask<Param, Progress, Result> {
  protected void onPreExecute()
  {...}
  protected Result doInBackground(Param... args)
  { publishProgress(...); return ""; }
  protected void onProgressUpdate(Progress... args)
  {...}
  protected void onPostExecute(Result parsedText) {
    mTitleBar.startAnimation(mSlideOut);
  }
}
new MyAsyncTask().execute(...);
\end{minted}
\end{frame}
\begin{frame}[label={sec:org5d3f082}]{小练习}
\begin{block}{用 runOnUiThread 实现线程间交互 (MainActivity2)}
\end{block}
\begin{block}{用 Handler 实现线程间交互 (MainActivity3)}
\end{block}
\begin{block}{用 AsyncTask 实现线程间交互 (MainActivity4)}
\end{block}
\end{frame}

\begin{frame}[label={sec:org11b3bf5}]{WebView 应用}
\begin{block}{微博、微信客户端等的网页（网络应用）}
\end{block}
\begin{block}{CrossDict 的实现（离线网页应用）}
\end{block}
\end{frame}

\section{数据}
\label{sec:org08dc7b0}
\begin{frame}[label={sec:orgf2e294d}]{Android 文件系统介绍}
\begin{block}{ADB 的使用}
\end{block}
\begin{block}{Android 文件系统目录结构}
\end{block}
\begin{block}{App 目录结构}
\end{block}
\end{frame}

\begin{frame}[label={sec:org217fc53}]{小练习}
\begin{itemize}
\item 用 ADB 安装 Apk
\item 用 ADB 卸载 Apk
\item 查看 App 的目录
\end{itemize}
\end{frame}

\begin{frame}[fragile,label={sec:org4e6177f}]{Android 系统数据存取}
 \begin{block}{SharedPreferences}
\begin{minted}[]{java}
SharedPreferences spf =
  getSharedPreferences("allin4", 0);
spf.getInt(String key, int defValue);
spf.edit().putFloat(String key, float value).commit();
\end{minted}
\end{block}

\begin{block}{File：私有文件，sdcard 上的文件，只读的 asset 资源文件}
\begin{minted}[]{java}
openFileInput(path); openFileOutput(path);
Environment.getExternalStoragePublicDirectory(path);
AssetManager am = getAssets(); am.open(path);
\end{minted}
\end{block}
\begin{block}{Sqlite 单进程}
\end{block}
\begin{block}{ContentProvider 多进程（联系人数据）}
\end{block}
\end{frame}
\begin{frame}[label={sec:org122474f}]{小练习}
\begin{block}{SharedPreferences}
\begin{itemize}
\item 每进一次 Activity，把记数加 1，并显示
\item 查看 SharedPreferences 在文件系统中保存的位置
\end{itemize}
\end{block}
\end{frame}

\begin{frame}[fragile,label={sec:org31a5a39}]{数据传递、共享}
 \begin{block}{Intent 传递数据}
\begin{minted}[]{java}
Intent intent = new Intent();
intent.setClass(thisActivity,
  thatActivity.class);
intent.putExtra(key, value);
startActivity(intent);
\end{minted}
\end{block}

\begin{block}{Intent 获取数据}
\begin{minted}[]{java}
Intent intent = getIntent();
value = intent.getStringExtra(key);
\end{minted}
\end{block}
\end{frame}
\begin{frame}[fragile,label={sec:org736affb}]{数据传递、共享（续）}
 \begin{block}{startActivityForResult}
\begin{minted}[]{java}
Intent intent = new Intent(thisActivity,
       thatActivity.class);
startActivityForResult(intent, GET_CODE);

setResult(RESULT_OK,
    (new Intent()).setAction("Corky!"));
\end{minted}
\end{block}
\begin{block}{onActivityResult}
\begin{minted}[]{java}
protected void onActivityResult(
 int requestCode,
 int resultCode,
 Intent data) {
  if (requestCode == GET_CODE) {...}
}
\end{minted}
\end{block}
\end{frame}
\begin{frame}[label={sec:org9ac3205}]{数据传递、共享（续）}
\begin{block}{Singleton、Application}
\end{block}
\begin{block}{数据存取也是一种 IPC}
\end{block}
\end{frame}

\begin{frame}[label={sec:org3119791}]{小练习}
\begin{itemize}
\item 用 Intent 传递数据
\item 用 startActivityForResult 获取结果
\end{itemize}
\end{frame}

\section{总结}
\label{sec:orgff57843}
\begin{frame}[label={sec:org751453e}]{查看文档的方法}
\begin{block}{bhj-help-java 查看 java API}
\end{block}
\begin{block}{bhj-help-it 查看 android:layout\(_{\text{toLeftOf}}\) android:layout\(_{\text{weight}}\)}
\end{block}
\begin{block}{上 beagrep 暴力搜索}
\end{block}
\end{frame}
\begin{frame}[fragile,label={sec:org1da964e}]{下载整个 Android 源代码}
 \begin{minted}[]{sh}
repo_url=$(
    echo -n https://github.com/baohaojun
    echo -n system-config/raw/master/bin/repo
)
wget $repo_url -o ~/system-config/bin/repo

mani_url=$(
    echo -n https://android.googlesource.com/
    echo -n platform/manifest
)
repo init -u $mani_url -b android-4.4_r1
repo sync
\end{minted}
\end{frame}
\begin{frame}[label={sec:org274a1a5}]{ApiDemos}
\begin{figure}[htbp]
\centering
\includegraphics[width=.5\linewidth]{./images/opengl.ps}
\caption{\label{fig:orgc6e58d7}
OpenGL 画图}
\end{figure}
\end{frame}

\begin{frame}[label={sec:org2d3c4b9}]{多读，多写！}
\begin{block}{写出有趣的软件，发布到 Google Play 上}
\end{block}
\end{frame}
\end{document}

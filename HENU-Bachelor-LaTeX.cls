% !Mode:: "TeX:UTF-8"  
% https://github.com/Icey-u/HENU-Bachelor-LaTeX-Template
%==============================================================================%
%=                                                                            =%
%=                                                                            =%
%=        此为模板文件, 请勿删除. 若为 LaTex 新手, 不要修改任何内容!              =%
%=                                                                            =%
%=        This is the template file, please do not modify it!                 =$
%=                                                                            =%
%=                                                                            =%
%==============================================================================%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{HENU-Bachelor-LaTeX}[2023/02/13 Version: beta1.0. Henan University Thesis Template for Bachelor Degree]
\LoadClass[zihao=-4,a4paper,twoside]{ctexbook} %若需单面打印，[]中twoside改为oneside即可，不建议改动。
\setmainfont{Times New Roman}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions


%------------------------ Page layout ----------------------------------
\RequirePackage{fancyhdr,hyperref}

\hypersetup{pdfencoding=auto} % 输出模式 选择打印模式则隐藏超链接
 \ifprint
 \hypersetup{hidelinks}       % 选择打印模式则隐藏超链接
 \else
\hypersetup{colorlinks}       % 否则显示超链接
\fi

% 页面设置。根据教务处要求上边距2.8cm、下边距2.2cm、左边距2.5cm、右边距2.5cm，装订线：0cm、页眉1.8cm、页脚1.4cm、对称页边距%
\RequirePackage[top=2.8truecm,bottom=2.2truecm,left=2.5truecm,right=2.5truecm,includefoot,xetex]{geometry}

%================== 基本信息 ================%
\newtoks\Year            %毕业年份
\newtoks\StudentNumber   %学号
\newtoks\miji            %密级
\newtoks\Cmajor          %学科专业中文名
\newtoks\Emajor          %学科专业英文名
\newtoks\Edate           %英文日期
\newtoks\Etitle          %英文题目
\newtoks\Eauthor         %作者英文名
\newtoks\Esupervisor     %指导教师英文名 + 职称
\newtoks\Ctutorname      %指导教师中文名
\newtoks\Ctutortitle     %指导教师职称
\newtoks\Eschoolname     %学院英文名
\newtoks\Cschoolname     %学院中文名



\pagestyle{fancyplain}
\fancyhf{}  %清除以前对页眉页脚的设置
\fancyhead[C]{\zihao{-5}河南大学本科生毕业论文}  
\renewcommand{\headrulewidth}{0.75pt}
\fancyfoot[C]{\thepage}


\fancypagestyle{plain}
{
\fancyhead[C]{\zihao{-5}河南大学本科生毕业论文}   % clear all header fields
\renewcommand{\headrulewidth}{0.75pt}
\fancyfoot{}                                    % clear all footer fields
\fancyfoot[C]{\thepage}
}

%%=================== 封面 =====================% 
\def\maketitle{%
  \null
  \thispagestyle{empty}%
  %\vspace*{-2cm}
\begin{center}\leavevmode
  % 此部分为之前规定, 新的模板以不含编号, 若需要, 请自行取消注释
	%{\heiti \zihao{5}%
	%\begin{tabular}{p{1cm}lp{9cm}l}
	%	 \raisebox{-0.5ex}[0pt]{\makebox[1cm][s]{编号：}} &\raisebox{-0.5ex}[0pt]{\the\StudentNumber}\hfill{} & \\ \cline{2-2}
	%\end{tabular}
	%}
    \par
    \vspace*{3.1cm} %插入空白
    {\heiti \zihao{-2} \makebox[12cm][s]{河南大学{\the\Year}届本科毕业论文}}
    \par
    \vspace{3.1cm}
    {\heiti \zihao{2} \@title }%
    \par
%    \vspace{4cm}
     \vfill\vfill\vfill
     {\heiti \zihao{3} % 改为三号字
     \begin{tabular}{cp{5cm}c}
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{论文作者姓名：}} & {{}\raisebox{-3ex}[0pt]{\@author}\hfill{}} & \\ \cline{2-2}%[3ex]
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{作 \hfill 者 \hfill 学 \hfill 号：}} & { {}\raisebox{-3ex}[0pt]{\the\StudentNumber}\hfill{}} & \\ \cline{2-2}%[3ex]
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{所 \hfill 在 \hfill 学 \hfill 院：}} & {  {}\raisebox{-3ex}[0pt]{\the\Cschoolname}\hfill{}} & \\ \cline{2-2}%[3ex]
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{所 \hfill 学 \hfill 专 \hfill 业：}} & { {}\raisebox{-3ex}[0pt]{\the\Cmajor}\hfill{}} & \\ \cline{2-2}%[3ex]
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{导 \hfill 师 \hfill 姓 \hfill 名：}} & { {}\raisebox{-3ex}[0pt]{\the\Ctutorname}\hfill{}} & \\ \cline{2-2}%[3ex]
       \raisebox{-3ex}[0pt]{\makebox[3.8cm][s]{导 \hfill 师 \hfill 职 \hfill 称：}} & { {}\raisebox{-3ex}[0pt]{\the\Ctutortitle}\hfill{}} & \\ \cline{2-2}%[3ex]
%      \raisebox{-3ex}[0pt]{\makebox[2.0cm][s]{}} & { {}\raisebox{-3ex}[0pt]{\@date}\hfill{}} %[3ex]
      \end{tabular}
     }
     % 时间
     {\heiti \zihao{3} % 改为三号字
     \begin{tabular}{cp{5cm}c}
       \raisebox{-3ex}[0pt]{\makebox[2.0cm][s]{}} & { {}\raisebox{-3ex}[0pt]{\@date}\hfill{}} %[3ex]
     \end{tabular}
     } 
    \par
    \vspace{1.6cm}
%    {
%    {\songti \zihao{3} \@date \par}%
%    }
    %\vspace*{-0.7cm}
\end{center}%
%  \null
%   \cleardoublepage 
  }

%------------------------ Abstract & Keywords -------------------------
\newcommand\cnabstractname{摘要} 
\newcommand\enabstractname{ABSTRACT}
\newcommand\cnkeywords[1]{ {\heiti\zihao{4}\cnkeywordsname: }#1} % 去掉原模板的 noindent, 字号改为四号, 以符合河大教务处要求
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{ {\bfseries\zihao{4}\enkeywordsname: }#1} % 去掉原模板的 noindent, 字号改为四号, 以符合河大教务处要求。2019.11.27
\newcommand\enkeywordsname{Key words}

\newenvironment{cnabstract}{
    \newpage
\chapter*{\ziju{1}\zihao{3}{\cnabstractname}}   % 改为 3 号字
    \songti\zihao{-4}
    \@afterheading}
    {\par}

\newenvironment{enabstract}{
    \newpage
    \chapter*{\zihao{3}{\enabstractname}}%%字号改为三号%字，以符合河大教务处要求。2019.11.27
    \songti\zihao{-4}
    \@afterheading}
    {\par}

%------------------------本模板使用宏包-----------------------------------
\RequirePackage{bm}
\RequirePackage{amsmath,amssymb}
\RequirePackage[amsmath,thmmarks]{ntheorem}% AMSLaTeX宏包.
\RequirePackage{graphicx}                 % 图形
\RequirePackage{color,xcolor}             %支持彩色
\RequirePackage{url}
\RequirePackage{hologo}
\RequirePackage{enumerate}
\RequirePackage{emptypage}  % 去掉空白页上的页码
\RequirePackage{gbt7714}  % 参考文献格式为 GB/T 7714 - 2015
%----------- 代码栅栏 --------------%
\RequirePackage{listings} 
\lstset{ %
    language = ,                      % the language of the code
    basicstyle = \footnotesize,       % the size of the fonts that are used for the code
    numbers = left,                   % where to put the line-numbers
    numberstyle = \tiny\color[RGB]{0,0,0},  % the style that is used for the line-numbers
    stepnumber = 1,                   % the step between two line-numbers. If it's 1, each line will be numbered
    numbersep = 14pt,                 % how far the line-numbers are from the code
    backgroundcolor = \color{white},  % choose the background color. You must add \usepackage{color}
    showspaces = false,               % show spaces adding particular underscores
    showstringspaces = false,         % underline spaces within strings
    showtabs = false,                 % show tabs within strings adding particular underscores
    frame = single,                   % adds a frame around the code
    rulecolor = \color{black},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. commens (green here))
    tabsize = 2,                      % sets default tabsize to 2 spaces
    captionpos = b,                   % sets the caption-position to bottom
    breaklines = true,                % sets automatic line breaking
    breakatwhitespace = false,        % sets if automatic breaks should only happen at whitespace
    title = \lstname,                 % show the filename of files included with \lstinputlisting; also try caption instead of title
    keywordstyle = \color{blue},      % keyword style
    commentstyle = \color{dkgreen},   % comment style
    stringstyle = \color{mauve},      % string literal style
    escapeinside = {\%*}{*)},         % if you want to add LaTeX within your code
    morekeywords = {*,...}            % if you want to add more keywords to the set
  }
%%----------------------- Theorems -----------------------------------
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
%\theoremsymbol{} %定理结束时自动添加的标志
% 如想改为 1.1.1, 则将 [chapter] 改为 [section]
\newtheorem{theorem}{\hspace{2em}定理}[chapter]
\newtheorem{definition}{\hspace{2em}定义}[chapter]
\newtheorem{lemma}{\hspace{2em}引理}[chapter]
\newtheorem{corollary}{\hspace{2em}推论}[chapter]
\newtheorem{proposition}{\hspace{2em}性质}[chapter]
\newtheorem{example}{\hspace{2em}例}[chapter]
\newtheorem{remark}{\hspace{2em}注}[chapter]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}


\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现

%=================== list 环境, 勿动 ==============% 

\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%
% Change default margins for \list environments
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
%
\setlength\listparindent{2\ccwd}
% Change \listparindent to 2\ccwd in \list
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}

\makeatother


% ---- 章节标题设置 ----- %
\ctexset{chapter={format+={\zihao{-2}},%正文中章标题字号
               number={第~\arabic{chapter}~章},name={,},afterskip={30pt},beforeskip={20pt}}}
\ctexset{section={format+={\zihao{-3}\raggedright}}} %节标题
\ctexset{subsection={format+={\zihao{4}\raggedright}}} %小节(条)标题
\ctexset{subsubsection={format={\zihao{-4}\bf\raggedright}}} %小小节(款)标题

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}

%%% ---- 图表标题设置 ----- %%%%
\RequirePackage[labelsep=quad]{caption} %%序号之后空一格写标题
\captionsetup[table]{font={bf,small}}  %%设置表格标题字体为黑体,字号为5号。2019.11.26
\captionsetup[figure]{font={normalfont,small}}  %%设置插图标题字体默认为宋体,字号为5号.2019.11.26
\renewcommand\figurename{\zihao{5} 图}
\renewcommand\tablename{\bf\zihao{5} 表} 

%%% ------ 目录设置 ------- %%%%
\ctexset{contentsname={\ziju{1}目录}}
 
\RequirePackage{tocloft} 
\renewcommand\cftchapfont{\zihao{-4}\bf}    %%目录列表里的章标题字号小四黑体。2019.11.26
\renewcommand\cftsecfont{\zihao{-4}}    %%目录列表里的节标题字号小四宋体。2019.11.26
\renewcommand\cftsubsecfont{\zihao{5}}    %%目录列表里的小节标题字号五号宋体。2019.11.26
\renewcommand\cfttoctitlefont{\hfill\zihao{3}\bf}  %%“目 录”二字小二黑体。2019.11.26
\renewcommand\cftaftertoctitle{\hfill}    
 

 % 图片文件路径
\graphicspath{{figures/}}

\allowdisplaybreaks

\endlinechar `\^^M
\endinput

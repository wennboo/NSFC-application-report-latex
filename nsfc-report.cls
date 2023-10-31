
%%%  bowang1988@163.com    2023.3.10 BoWang (School of Automation, HDU)

\ProvidesClass{nsfc-report}

\LoadClass[12pt,a4paper]{article}%小四号 12pt
\RequirePackage[left=3.00cm,right=3.0cm,top=2.5cm,bottom=2.5cm]{geometry}

\RequirePackage{titlesec}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  bookmarksnumbered=true,
  linkcolor=black,
  urlcolor=black
}

\RequirePackage{indentfirst}
\RequirePackage{xeCJK}
\RequirePackage{tikz}%%%%%%%绘图宏包
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[comma,numbers,square,sort&compress]{natbib}
\RequirePackage{paralist}
\RequirePackage{bm}
\RequirePackage{url}
\RequirePackage{graphicx}
\usepackage{subfigure} 
\RequirePackage{dcolumn} %%%%%%列表对齐
\RequirePackage{bbding}%%%%%%%%%%五角星
\RequirePackage{ifthen}
\RequirePackage{multirow}
\RequirePackage{zhnumber}
\RequirePackage{appendix}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}
\RequirePackage{anyfontsize}%%%%%%保证不同尺寸的pt

\RequirePackage{algorithm2e}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{bookmark}
\RequirePackage{fancyvrb}%%%定义页眉页脚
\RequirePackage{fancyhdr}
\RequirePackage[marginal,perpage]{footmisc}
\RequirePackage{pifont}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\InputIfFileExists{nsfc-report.cfg}

%%%%%%%%%%%%%%%%字体设置%%%%%%%%%%%%%%%%%

\RequirePackage{ifplatform}

\ifwindows
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{KaiTi}
  \newfontfamily{\heiti@letter}{SimHei}
\else
\ifmacosx
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{STKaiti}
  \newCJKfontfamily{\Fangsong}{STFangsong}
  \newfontfamily{\heiti@letter}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{fzsong.ttf}
  \newCJKfontfamily{\heiti}{fzhei.ttf}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{fzkai.ttf}
  \newfontfamily{\heiti@letter}{fzhei.ttf}
\fi
\fi


\setmainfont{Times New Roman}% 英文默认Time New Roman


\newcommand{\chuhao}{\fontsize{42pt}{42pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{36pt}\selectfont}
\newcommand{\dayihao}{\fontsize{28pt}{28pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}
\newcommand{\xiaoyihao}{\fontsize{24pt}{24pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{22pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{15.75pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{15pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{15.71pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{12pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{9pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{7.5pt}\selectfont}
\newcommand{\littlesixw}{\fontsize{7pt}{7pt}\selectfont}
\newcommand{\littlesixb}{\fontsize{6.8pt}{6.8pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{6.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{5.5pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\mm@space{\phantom{mm}}
\newcommand\yim@space{\phantom{一m}}
\newcommand\yiyi@space{\phantom{一一}}
%%%%%%%%%%%%%%%%%%%%%%%颜色设置%%%%%%%%%%
\definecolor{skyblue}{HTML}{0070C0}
\newcommand{\SBlue}{\color{skyblue}}
%%%%%%%%%%%%%%%%%%%%%%%插入图片%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{./pics/}}
%%%%%%%%%%%%%%%需要用到的命令%%%%%%%%%%%%%

%%%%%%%%%%%%%%节字号设置%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}[block]
  {\sihao\kaiti\SBlue\bfseries\mm@space}%%%%%%%%字体
  {\thesection}{7pt}{}%%%%%%%%%%%标号与文字间距

\titleformat{\subsection}[block]
  {\sihao\kaiti\SBlue\yim@space}
  {\thesubsection}{7pt}{}

%%%%%%%%%%%%%%%%%%%%%%%%%标题格式设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlespacing{\section}{0pt}{6pt}{6pt}
\titlespacing{\subsection}{0pt}{6pt}{6pt}
\titlespacing{\subsubsection}{0pt}{6pt}{6pt}

%%%%%%%%%%%%%%%%英文的标号变成中文%%%%%%%%%%%
\renewcommand{\refname}{\hspace{-18pt}\color{black} 参考文献}%%%%%默认是英文
\renewcommand{\figurename}{图}%%%默认是英文
\renewcommand{\tablename}{表}%%%默认是英文
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%参考文献设置%%%%%%%%%%%%%%%%%%%
\renewcommand{\citep}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\nsfcbibliography}[1]{
\begin{spacing}{1.25}
  \bibliographystyle{nsfc-report}
  \bibliography{#1}
\end{spacing}}
\setlength{\bibsep}{0em}%%%%%%%调整间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%其它设置%%%%%%%%%%%%%%
\setlength\parindent{2em}    %首行缩进
\XeTeXlinebreaklocale "zh"   %中文断行
\pagestyle{empty}%无页码
\setcounter{secnumdepth}{-9} %用于手动编号
\linespread{1.4}%%%正文中行间距12*1.3*1.4=22pt=15.71*14为保证标题行距为22pt,需要修改四号字14pt的基本行距为15.71pt




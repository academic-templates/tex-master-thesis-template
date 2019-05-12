% http://ctan.mirrors.hoobly.com/macros/latex/doc/clsguide.pdf
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mastersthesis}[2018/01/01 Master Thesis class]

\LoadClass[11pt, a4paper, openright]{report}

% Usefull packages
\usepackage[utf8x]{inputenc}
\usepackage[english]{babel}

\RequirePackage{microtype} % Improves typography
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{graphics}
\RequirePackage{color}
\definecolor{FirstBlue}{cmyk}{1.00,0.68,0.00,0.54}
\definecolor{SecondBlue}{cmyk}{0.70,0.30,0.00,0.00}
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
\DeclareTextSymbol{\degre}{T1}{6}

\RequirePackage{etoolbox}
\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\secondauthor}[1]{\def\@secondauthor{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\cosupervisor}[1]{\def\@cosupervisor{#1}}
\newcommand{\speciality}[1]{\def\@speciality{#1}}
\newcommand{\options}[1]{\def\@myoptions{#1}}
\newcommand{\readerone}[1]{\def\@readerone{#1}}
\newcommand{\readertwo}[1]{\def\@readertwo{#1}}
\newcommand{\readerthree}[1]{\def\@readerthree{#1}}
\newcommand{\years}[1]{\def\@years{#1}}

% Front cover page
\renewcommand{\maketitle}
	{\begin{titlepage}
	\newgeometry{top=1.25cm,bottom=1.25cm,left=1.25cm,right=1.25cm}
	\begin{center}
		\includegraphics[scale=1]{logos/banner.jpg}
	\end{center}
	\vspace*{9pt}
	\begin{flushright}
	    \color{FirstBlue} \fontfamily{phv} \selectfont
	    {\huge \@title} \\
	    \vspace*{12pt}
        \ifdef{\@subtitle}{\Large \@subtitle}{$ $} \\
	    \vspace*{12pt}
		\large Dissertation presented by \\
		\textbf{\@author}
        \ifdef{\@secondauthor}{\textbf{, \@secondauthor}}{}
		\\
		\vspace*{12pt}
		for obtaining the Master's degree in \\
		\textbf{\@speciality}\\
        \ifdef{\@myoptions}{\textit{Option(s): \@myoptions}}{$ $}\\
		\vspace*{12pt}
		Supervisor(s)\\
		\textbf{\@supervisor}% avoid space before comma
        \ifdef{\@cosupervisor}{\textbf{, \@cosupervisor}}{}
		\\
		\vspace*{12pt}
		Reader(s) \\
		\textbf{\@readerone, \@readertwo}
        \ifdef{\@readerthree}{\textbf{, \@readerthree}}{}
		\\
		\vspace*{12pt}
		Academic year \@years \\
	\end{flushright}
	\vspace*{6pt}
	\color{SecondBlue}{\rule{18.5cm}{7.25cm}}
  \end{titlepage}
}
\newcommand{\frontpage}
{
  \begin{titlepage}
  \end{titlepage}
}

% Back cover page
\newcommand{\backcoverpage}
{
  \newpage
  \thispagestyle{empty}
  \newgeometry{top=1.25cm,bottom=1.25cm,left=1.25cm,right=1.25cm}
  \vspace*{17.75cm}
  \noindent \footnotesize \color{FirstBlue} \fontfamily{phv} \selectfont Rue Archim\`{e}de, 1 bte L6.11.01, 1348 Louvain-la-Neuve ~ ~ \color{SecondBlue} \textbf{www.uclouvain.be/epl} \\
  \vspace*{6pt}
  \textcolor{SecondBlue}{\rule{18.5cm}{8.25cm}}
}

\endinput

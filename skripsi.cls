\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi}[2025/04/23 Original Author: Ridho]

\LoadClass[10pt, b5paper]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required package

\RequirePackage{lipsum}
\RequirePackage{etoolbox}
\RequirePackage{tocloft}
\RequirePackage{float}
\RequirePackage[labelfont=bf, labelsep=period, figurewithin=none]{caption}
\RequirePackage[round]{natbib}
\RequirePackage{booktabs}
\RequirePackage{chngcntr}
\RequirePackage{needspace}
\RequirePackage[indonesian]{babel}
\RequirePackage{microtype}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{listings}

% Customizing list
\RequirePackage{enumitem}
\RequirePackage{tikz}

% Compact title
\RequirePackage[compact]{titlesec}

% Optimize
\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Image
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{background}

% Math related
\RequirePackage{amsmath, amssymb}

% Margin
\RequirePackage{geometry}

% Line spacing
\RequirePackage{setspace}

% Title
\RequirePackage{titlesec}

% Page num
\RequirePackage{fancyhdr}

% Clickable links
\RequirePackage{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Arial font
\RequirePackage{fontspec}
\setmainfont{Arial}
\RequirePackage{unicode-math}
\DeclareMathAlphabet{\mathupright}{OT1}{cmr}{m}{n}

% Margin
\geometry{
  top=2.25cm,
  bottom=2.25cm,
  left=2.25cm,
  right=2.25cm,
  % showframe
}

\backgroundsetup{
  scale=1,
  angle=0,
  opacity=0.1,
  position=current page.center,
  contents={}
}
% --- TOC & Chapter Formatting ---
\addto\captionsindonesian{
  \renewcommand\listfigurename{\vspace*{-3cm}}
  \renewcommand\listtablename{\vspace*{-3cm}}
  \renewcommand\contentsname{\vspace*{-3cm}}
  \renewcommand{\thefigure}{\arabic{figure}}
  \renewcommand{\thetable}{\arabic{table}}
}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\makeatletter
\renewcommand{\@chapapp}{BAB}
\renewcommand{\chaptername}{BAB}
\renewcommand{\@makechapterhead}[1]{%
  \vspace*{-15pt}%
  {\parindent \z@ \centering
    \normalfont\bfseries\fontsize{11pt}{13pt}\selectfont
    \MakeUppercase{BAB\ \thechapter}%
    \par\nobreak
    \vskip 5pt
    \normalfont\bfseries\fontsize{11pt}{13pt}\selectfont
    \MakeUppercase{#1}\par\nobreak
    \vskip 20pt
  }
}
\makeatother
\renewcommand{\cftchappresnum}{BAB }
% Space between BAB [num] and text
\setlength{\cftchapnumwidth}{3.8em}
\setlength{\cftbeforechapskip}{0pt}

% Line Spacing in TOC
\usepackage{etoolbox}
\pretocmd{\tableofcontents}{\begingroup\setstretch{1}}{}{}
\apptocmd{\tableofcontents}{\endgroup}{}{}

\captionsetup{justification=centering}

% Gambar caption
\renewcommand{\figurename}{Gambar}
\renewcommand{\thefigure}{\arabic{figure}}
\counterwithout{figure}{chapter}
\setlength{\cftbeforefigskip}{0pt}
\renewcommand{\cftfigpresnum}{\bfseries Gambar }
\renewcommand{\cftfigaftersnum}{\textbf{.}}
\setlength{\cftfignumwidth}{6em}

% Table caption
\counterwithout{table}{section}
\renewcommand{\tablename}{Tabel}
\renewcommand{\cfttabpresnum}{\bfseries Tabel }
\renewcommand{\cfttabaftersnum}{\textbf{.}}
\setlength{\cfttabnumwidth}{4em}

% Equation numbering
\renewcommand{\theequation}{\arabic{equation}}

% BIB
\addto\captionsindonesian{
  \renewcommand{\bibname}{Daftar Pustaka}
}
\setlength{\bibhang}{2em}

% Page num
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

% Fix report from replacing fancyhdr
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyhead[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

% Line space and indent
\setstretch{1.15}
\setlength{\parindent}{1cm}
\widowpenalty=10000
\clubpenalty=10000

% listings
\lstset{
  basicstyle=\ttfamily % This is the magic line!
}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  captionpos=b,
  keepspaces=true,
  numbers=left,
  numbersep=5pt,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=2
}

\lstset{style=mystyle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redefine
% Chapter
\renewcommand{\thechapter}{\Roman{chapter}}
\titleformat{\chapter}[display]
{\vspace*{-15pt}\bfseries\centering\fontsize{11pt}{13pt}\selectfont}
{BAB\ \thechapter}
{0pt}
{\bfseries\centering\fontsize{11pt}{13pt}\selectfont\MakeUppercase}
\titlespacing{\chapter}
{0pt}
{*0}
{1.15\baselineskip}
% Section
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\titleformat{\section}
{\bfseries\fontsize{10pt}{13pt}\selectfont}
{\thesection}
{1em}
{}
\titlespacing{\section}
{0pt}        % No indentation
{*0}         % No space before the section title
{*0}         % No space after the section title
% Subsection
\titleformat{\subsection}
{\bfseries\fontsize{10pt}{13pt}\selectfont}
{\thesubsection}
{1em}
{}
\titlespacing{\subsection}
{0pt}        % No indentation
{*0}         % No space before the subsection title
{*0}         % No space after the subsection title
% List
\setlist[enumerate]{
  noitemsep,
  nolistsep,
  leftmargin=*
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

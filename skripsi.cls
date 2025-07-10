\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi}[2025/04/23 Original Author: Ridho]

\LoadClass[10pt, b5paper]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required package

\RequirePackage{lipsum}
\RequirePackage{etoolbox}
\RequirePackage{tocloft}
\RequirePackage{float}
\RequirePackage[labelfont=bf, labelsep=period]{caption}
\RequirePackage[round]{natbib}
\RequirePackage{booktabs}
\RequirePackage{chngcntr}
\RequirePackage{needspace}
\RequirePackage[indonesian]{babel}
\RequirePackage{microtype}

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
\RequirePackage{mathastext}

% Margin
\geometry{
  top=2.25cm,
  bottom=2.25cm,
  left=2.25cm,
  right=2.25cm,
  showframe
}

\backgroundsetup{
  scale=1,
  angle=0,
  opacity=0.1,
  position=current page.center,
  contents={}
}
% --- TOC & Chapter Formatting ---
\renewcommand\contentsname{\vspace*{-3cm}}
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
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchappresnum}{BAB }
% Space between BAB [num] and text
\setlength{\cftchapnumwidth}{3.8em}
\setlength{\cftbeforechapskip}{0pt}

% Line Spacing in TOC
\usepackage{etoolbox}
\pretocmd{\tableofcontents}{\begingroup\setstretch{1}}{}{}
\apptocmd{\tableofcontents}{\endgroup}{}{}

% Gambar caption
\renewcommand{\figurename}{Gambar}
\renewcommand{\thefigure}{\arabic{figure}}
\counterwithout{figure}{chapter}

% Table caption
\counterwithout{table}{section}
\renewcommand{\tablename}{Tabel}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redefine
% Chapter
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

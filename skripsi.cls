\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi}[2025/04/23 Original Author: Ridho]

\LoadClass[10pt, b5paper]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required package

% Customizing list
\RequirePackage{enumitem}

% Compact title
\RequirePackage[compact]{titlesec}

% Indent first paragraph

% Optimize
\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Image
\RequirePackage{graphicx}

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

% Margin
\geometry{
    top=2.25cm,
    bottom=2.25cm,
    left=2.25cm,
    right=2.25cm,
    showframe
}

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
\hyphenpenalty=10000
\exhyphenpenalty=10000
\sloppy

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
% List
\setlist[enumerate]{
    noitemsep,
    nolistsep,
    leftmargin=*
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

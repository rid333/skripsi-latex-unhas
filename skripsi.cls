\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi}[2025/04/23 Original Author: Ridho]

\LoadClass[10pt, b5paper]{report}

% Required package
% Indent first paragraph
\RequirePackage{titlesec}
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
% Arial font
\RequirePackage{fontspec}
\setmainfont{Arial}

% Margin
\geometry{
  top=2.25cm,
  bottom=2.25cm,
  left=2.25cm,
  right=2.25cm,
}

% Page num
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

% Line space and indent
\setstretch{1.15}
\setlength{\parindent}{1cm}
\hyphenpenalty=10000
\exhyphenpenalty=10000
\sloppy

% Redefine chapter, section, etc
\titleformat{\chapter}[display]
  {\bfseries\fontsize{11pt}{13pt}\selectfont\centering}  % 11pt, bold, center
  {BAB \thechapter}       % bisa disesuaikan: "Chapter" atau "BAB"
  {1em}                   % jarak antar nomor dan judul
  {\centering}  

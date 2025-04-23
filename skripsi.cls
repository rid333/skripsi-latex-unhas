\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi}[2025/04/23 Original Author: Ridho]

\LoadClass[11pt, b5paper]{report}

% Required package
% Indent first paragraph
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
  headheight=15pt,
  headsep=0.7cm,
  includehead
}

% Page num
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}



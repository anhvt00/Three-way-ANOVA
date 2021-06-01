\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{statistics-report}

\LoadClass[12pt]{book}

\RequirePackage[utf8]{inputenc}
% \RequirePackage{fourier}
\RequirePackage[left=2.5cm,right=2cm,top=3cm,bottom=3cm]{geometry}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amscdx}
\RequirePackage{mathtools}
\RequirePackage{mathrsfs}
\RequirePackage{cases}
\RequirePackage{xpatch}
\RequirePackage{hyperref}

\RequirePackage{xspace}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage{chngcntr}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{enumitem}
\RequirePackage{placeins}
\RequirePackage{minted}

\setcounter{chapter}{0}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\pagestyle{fancy}
\setlength{\headheight}{16pt}
\fancyhf{}
\fancyhead[L]{\rightmark}
\fancyfoot[C]{\thepage}
% \fancyhead[R]{\thepage}
% \fancyhead[LO]{\thepage}
% \fancyhead[RE]{\thepage}
% \fancyhead[LE]{\textit{\nouppercase\leftmark}}
% \fancyhead[RO]{\textit{\nouppercase\rightmark}}

\titleformat{\chapter}[display]{\bf\huge}{\chaptertitlename\ \thechapter}{10pt}{}
\titleformat{\section}{\bf\Large}{\thesection.}{10pt}{}
\titleformat{\subsection}{\bf\large}{\thesubsection.}{10pt}{}
\titleformat{\subsubsection}{\bf\large}{\thesubsubsection.}{10pt}{}

\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\counterwithout{section}{chapter}
\counterwithout{figure}{chapter}
\renewcommand\cftchappresnum{\S}

\captionsetup[figure]{name={h.},font={small}}
\newenvironment{sqcases}{%
    \matrix@check\sqcases\env@sqcases
}{%
    \endarray\right.%
}
\def\env@sqcases{%
  \let\@ifnextchar\new@ifnextchar
  \left\lbrack{}
  \def\arraystretch{1.2}%
  \array{@{}l@{\quad}l@{}}%
}
% chktex-file 6
\xpatchcmd{\proof}{\itshape}{\normalfont\proofnamefont}{}{}
\newcommand{\proofnamefont}{}
\renewcommand{\proofnamefont}{\bfseries}
% \renewcommand\bibname{References}


\newcommand{\mybox}[1]{\fbox{\parbox{0.95\textwidth}{#1}}}

% use R code
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}

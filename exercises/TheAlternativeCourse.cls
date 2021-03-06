% vim: set ft=tex:

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TheAlternativeCourse}

% packages
\LoadClass[11pt]{scrartcl}          % Base class: KOMA script article
\RequirePackage[utf8]{inputenc}     % Support for german 'umlaut' (ä, ö, ü)
\RequirePackage{lastpage}           % \pageref{LastPage}
\RequirePackage{scrlayer-scrpage}   % KOMA Script header/footer package
\RequirePackage{graphicx}           % \includegraphics{...}
\RequirePackage[showseconds=false,showzone=false]{datetime2}
\RequirePackage[table]{xcolor}
\RequirePackage[most]{tcolorbox}
\RequirePackage{hyperref}

% helvetica font
% \RequirePackage[scaled]{helvet}
% \RequirePackage[T1]{fontenc}
% \renewcommand\familydefault{\sfdefault}

% header / footer
\KOMAoptions{headsepline,headheight=27.5pt}
\setkomafont{pagehead}{\normalfont\normalcolor} % non-italic header font
\setkomafont{pagefoot}{\normalfont\normalcolor} % non-italic footer font
\newcommand{\builddate}{\footnotesize Revision: \input{GIT_TAG} \\ Build: \DTMNow}
\newcommand{\thealtlogo}{\includegraphics[width=4.5cm]{assets/logo.png}}
\lohead[\thealtlogo]{\thealtlogo}
\rohead[\builddate]{\builddate}
\cofoot[\footnotesize \thepage~/~\pageref{LastPage}]{\thepage~/~\pageref{LastPage}}
\recalctypearea%

\setlength{\voffset}{-1.2cm} % space before header
\setlength{\textheight}{1.15\textheight} % height of text

\definecolor{ldorange}{HTML}{F18A20}
\definecolor{ldblue}{HTML}{254471}
\definecolor{grey1}{HTML}{aaaaaa}
\definecolor{grey2}{HTML}{efefef}
\definecolor{lightblue}{HTML}{d9edfc}
\definecolor{exclamred}{HTML}{db1515}

\colorlet{lightyellow}{yellow!6!white}
\colorlet{darkeryellow}{red!15!yellow!40!white}

\newtcolorbox[auto counter, number within=section]{exercisebox}[2][]{%
    colback=lightyellow,
    fuzzy shadow={1mm}{-1mm}{0mm}{0.1mm}{black!50!white},
    colframe=ldorange,
    coltitle=black,
    enhanced,
    fonttitle=\bfseries,
    title=Task~\thetcbcounter: #2,#1}

\newtcolorbox{cmdbox}{%
    colback=grey2,
    fuzzy shadow={1mm}{-1mm}{0mm}{0.1mm}{black!50!white},
    enhanced,
    colframe=grey1,
    coltitle=black,
    enhanced}

\newtcolorbox{tcbhintbox}{%
    enhanced,
    skin=bicolor,
    segmentation at break=true,
    boxrule=0.8pt,
    left=3.5mm,
    top=0.5mm,
    bottom=0.5mm,
    arc=1pt,
    boxsep=2pt,
    lefthand ratio=0.06,
    sidebyside,
    colframe=ldorange,
    coltext=black,
    colback=darkeryellow,
    colbacklower=lightyellow,
}

\newcommand{\hintbox}[1]{%
\begin{tcbhintbox}
    \includegraphics[width=8mm]{img/light_bulb.pdf}%
    \tcblower%
    #1
\end{tcbhintbox}}


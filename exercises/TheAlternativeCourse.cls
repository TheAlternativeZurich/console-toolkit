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
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}

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

\newtcolorbox[auto counter, number within=section]{exercisebox}[2][]{%
    colback=yellow!6!white,
    colframe=ldorange,
    coltitle=black,
    enhanced,
    fonttitle=\bfseries,
    title=Exercise~\thetcbcounter: #2,#1}

\makeatletter
\newtcolorbox[]{@hintbox}{%
    colback=ldblue!10!white,
    colframe=ldblue,
    leftrule=3mm,
    }

\newenvironment{hintbox}
{\begin{@hintbox}\textbf{Hint:}}
{\end{@hintbox}}
\makeatother

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

% helvetica font
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\renewcommand\familydefault{\sfdefault}

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


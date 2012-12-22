%%
%% This is file `kaumeeting.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kaumeeting.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (c) 2011-2012 Stefan Berthold <stefan.berthold@kau.se>
%% 
%% This file is part of the kauthesis bundle.
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `author-maintained'.
%% 
%% The Current Maintainer and author of this work is Stefan Berthold.
%% 
%% This work consists of all files listed in manifest.txt.
%% 
%% kaumeeting.dtx
%% Copyright (c) 2011-2012 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaumeeting}
    [2011/11/18 v1.0 Karlstad University meeting record]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage[paper=a4,pagesize]{typearea}
\RequirePackage{xkeyval}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{tabularx}
\RequirePackage{ragged2e}
\define@cmdkeys[kaumet]{general}[kaumet@]%
  { meeting, protocol, place%
  , date, start, end%
  , participants, excused, missing%
  , distribution%
  , faculty, department%
  , logofile%
  }
\newcommand\metadata[1]{\setkeys[kaumet]{general}{#1}}
\setkeys[kaumet]{general}%
  { meeting=, protocol=, place=%
  , date=\today, start=, end=%
  , participants=, excused=, missing=%
  , distribution=%
  , faculty={Faculty of Health, Science and Technology}%
  , department={Department of Mathematics and Computer Science}%
  , logofile={kau-logo-tryck}
  }
\let\kaumet@maketitle\maketitle
\renewcommand\maketitle{
  \thispagestyle{empty}
  \begin{tikzpicture}[overlay,remember picture]
    % top
    \path (current page.north)
      node[below=5mm, text centered, text width=\textwidth] (top)
      {\includegraphics[width=33mm]{\kaumet@logofile}\\[5mm]%
      \kaumet@faculty\\%
      \kaumet@department}
    ;
  \end{tikzpicture}
  \vspace{1.5cm}\\
  \mbox{}\hfill\kaumet@date\\
  \centering \Large\scshape Meeting Record\\
  \justifying\normalfont\bigskip\small\noindent
  \begin{tabularx}{\textwidth}{@{}>{\bfseries\vphantom{Xy}}rX}
    subject & \kaumet@meeting\\
    place & \kaumet@place\\
    start & \kaumet@start\\
    end & \kaumet@end\\
    participants & \kaumet@participants\\
    recording & \kaumet@protocol\\
    excused & \kaumet@excused\\
    missing & \kaumet@missing\\
    distribution & \kaumet@distribution
  \end{tabularx}\smallskip
  \justifying\normalfont\normalsize
}
\endinput
%%
%% End of file `kaumeeting.cls'.

%%
%% This is file `kaumeeting.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kauprotocol.dtx  (with options: `meeting')
%% 
%% This is a generated file.
%% 
%% Copyright (c) 2011-2013 Stefan Berthold <stefan.berthold@kau.se>
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
    [2013/05/28 v1.10 Karlstad University protocol bundle]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{kauhead}
\RequirePackage{tabularx}
\define@cmdkeys[kaumet]{general}[kaumet@]%
  { meeting, protocol, place%
  , start, end%
  , participants, excused, missing%
  , distribution%
  }
\define@cmdkey[kaumet]{general}[kaumet@]{date}%
  {\setkeys[kauhed]{general}{date={#1}}}
\define@cmdkey[kaumet]{general}[kaumet@]{faculty}%
  {\setkeys[kauhed]{general}{faculty={#1}}}
\define@cmdkey[kaumet]{general}[kaumet@]{department}%
  {\setkeys[kauhed]{general}{department={#1}}}
\define@cmdkey[kaumet]{general}[kaumet@]{logofile}%
  {\setkeys[kauhed]{general}{logofile={#1}}}
\newcommand\metadata[1]{\setkeys[kaumet]{general}{#1}}
\setkeys[kauhed]{general}{title=Meeting record}%
\setkeys[kaumet]{general}%
  { meeting=, protocol=, place=%
  , date=\today, start=, end=%
  , participants=, excused=, missing=%
  , distribution=%
  , faculty={Faculty of Health, Science and Technology}%
  , department={Department of Mathematics and Computer Science}%
  , logofile={kau_2012_cmyk_eps_14679}%
  }
\let\kaumet@maketitle\maketitle
\renewcommand\maketitle{
  \kaumet@maketitle%
  \small%
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

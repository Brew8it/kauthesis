%%
%% This is file `kaureport.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kaureport.dtx  (with options: `class')
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
%% kaureport.dtx
%% Copyright (c) 2011-2012 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaureport}
    [2012/12/14 v1.2 Karlstad University report layout]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{kauclear}
\RequirePackage{kaustudies}
\RequirePackage{kaumeta}
\RequirePackage{kauparts}
\RequirePackage{kauenvironments}
\AtBeginDocument{\let\kaurep@maketitle\maketitle}
\renewcommand\maketitle{%
  \kaurep@maketitle%
  \cleardoublepage%
}
\newcommand*\keywordname{\iflanguage{swedish}{Nyckelord}{Keywords}}
\let\kaurep@abstract\abstract%
\let\kaurep@endabstract\endabstract%
\newcommand*\frontmatter{%
  \clearpage%
  \setcounter{page}{3}%
  \renewcommand\thepage{\roman{page}}%
  \renewenvironment{abstract}{%
    \newcommand\keywords{\paragraph{\keywordname:}}%
    \cleardoublepage%
    \section*{\@title}%
    \textsc{\@author}\par%
    \noindent\textit{\@institute}%
    \section*{\abstractname}%
  }{%
    \cleardoublepage%
  }%
}
\let\kaurep@tableofcontents\tableofcontents
\renewcommand\tableofcontents{%
  \cleardoublepage%
  \kaurep@tableofcontents%
}
\newcommand\mainmatter[1][]{%
  \cleardoublepage%
  \pagenumbering{arabic}%
  \setcounter{page}{1}%
}
\let\part\kaupart
\endinput
%%
%% End of file `kaureport.cls'.

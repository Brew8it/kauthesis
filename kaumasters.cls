%%
%% This is file `kaumasters.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kaumasters.dtx  (with options: `class')
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
    [2011/05/06 v1.1 Karlstad University report layout]
\ProcessOptions\relax
\LoadClass[a4paper]{article}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage[paper=a4,pagesize,twoside=semi]{typearea}
\RequirePackage{kauclear}
\RequirePackage{kaumeta}
\AtBeginDocument{\let\kur@maketitle\maketitle}
\renewcommand\maketitle{%
  \kur@maketitle%
  \cleardoublepage%
}
\let\kur@tableofcontents\tableofcontents
\renewcommand\tableofcontents{%
  \cleardoublepage%
  \kur@tableofcontents%
}
\newcommand*\frontmatter{%
  \clearpage%
  \setcounter{page}{3}%
  \renewcommand\thepage{\roman{page}}%
  \newcommand\makeworkingtitle{%
    \section*{\@title}%
    \textsc{\@author}\par%
    \noindent\textit{\@institute}%
  }%
  \renewenvironment{abstract}{%
    \section*{Abstract}%
    %\addcontentsline{toc}{section}{Abstract}%
  }{%
    \cleardoublepage%
  }%
}
\newcommand\mainmatter[1][]{%
  \cleardoublepage%
  \pagenumbering{arabic}%
  \setcounter{page}{1}%
}
\endinput
%%
%% End of file `kaumasters.cls'.

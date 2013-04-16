%%
%% This is file `kaucollection.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kauthesis.dtx  (with options: `collection')
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
%% kauthesis.dtx
%% Copyright (c) 2011-2012 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaucollection}
    [2012/04/16 v1.7 Karlstad University thesis layout]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{kauclear}
\RequirePackage{kaumeta}
\RequirePackage{kaustudies}
\RequirePackage{kauenvironments}
\RequirePackage{tikz}
\RequirePackage{kaupaper}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\acknowledgementname{%
      \iflanguage{swedish}{Tacks\"agelser}{Acknowledgements}}%
    }%
    {\newcommand*\acknowledgementname{Acknowledgements}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\keywordname{%
      \iflanguage{swedish}{Nyckelord}{Keywords}}%
    }%
    {\newcommand*\keywordname{Keywords}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\introname{%
      \iflanguage{swedish}%
        {Inledande sammanfattning}%
        {Introductory Summary}}%
    }%
    {\newcommand*\introname{Introductory Summary}}%
}
\let\kauths@maketitle\maketitle
\renewcommand\maketitle{%
  \PackageWarning{maketitle does not serve any purpose in this class.
    The abstract environment reproduces the title instead.}%
}
\let\kauths@abstract\abstract%
\let\kauths@endabstract\endabstract%
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
\newenvironment{acknowledgements}{%
  \cleardoublepage%
  \section*{\acknowledgementname}%
}{%
  \par\bigskip\bigskip\bigskip\noindent\@place, \@date\hfill \@author%
  \cleardoublepage%
}
\let\kauths@tableofcontents\tableofcontents
\renewcommand\tableofcontents{%
  \cleardoublepage%
  \kauths@tableofcontents%
}
\newcommand\mainmatter[1][]{%
  \cleardoublepage%
  \renewenvironment{abstract}{\kauths@abstract}{\kauths@endabstract}
  \setcounter{page}{1}%
  \pagenumbering{arabic}%
  \kaupart*[body={#1}]{\introname}%
}
\newcommand\vanityquote[2]{%
  \begin{tikzpicture}[remember picture,overlay]%
    \path (current page.south east) +(-3,3.5)%
      node%
        [ anchor=south east%
        , font=\large%
        , text width=25em%
        ] {\raggedleft``#1\rlap{''}%
           \normalfont\par\medskip\itshape #2\par};%
  \end{tikzpicture}%
}
\endinput
%%
%% End of file `kaucollection.cls'.

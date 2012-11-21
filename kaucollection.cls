%%
%% This is file `kaucollection.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kaucollection.dtx  (with options: `class')
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
%% kaucollection.dtx
%% Copyright (c) 2011-2012 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaucollection}
    [2011/05/06 v1.1 Karlstad University collection thesis layout]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{kauclear}
\RequirePackage{kaustudies}
\RequirePackage{kaumeta}
\RequirePackage{kaupaper}
\RequirePackage{kauenvironments}
\RequirePackage{tikz}
\AtBeginDocument{\let\kuk@maketitle\maketitle}
\renewcommand\maketitle{%
  \kuk@maketitle%
  \cleardoublepage%
}
\let\kuk@tableofcontents\tableofcontents
\renewcommand\tableofcontents{%
  \cleardoublepage%
  \kuk@tableofcontents%
}
\let\kuk@abstract\abstract%
\let\kuk@endabstract\endabstract%
\newcommand*\frontmatter{%
  \clearpage%
  \setcounter{page}{3}%
  \renewcommand\thepage{\roman{page}}%
  \renewenvironment{abstract}{%
    \newcommand\keywords{\paragraph{Keywords:}}%
    \cleardoublepage%
    \section*{\@title}%
    \textsc{\@author}\par%
    \noindent\textit{\@institute}%
    \section*{Abstract}%
    %\addcontentsline{toc}{section}{Abstract}%
  }{%
    \cleardoublepage%
  }%
}
\newenvironment{acknowledgements}{%
  \cleardoublepage%
  \section*{Acknowledgements}%
  %\addcontentsline{toc}{section}{Acknowledgements}%
}{%
  \par\bigskip\bigskip\bigskip\noindent\@place, \@date\hfill \@author%
  \cleardoublepage%
}
\newcommand\mainmatter[1][]{%
  \cleardoublepage%
  \renewenvironment{abstract}{\kuk@abstract}{\kuk@endabstract}
  \setcounter{page}{1}%
  \renewcommand\thepage{\arabic{page}}%
  \kaupart*[body={#1}]{Introductory Summary}%
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

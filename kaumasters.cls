%%
%% This is file `kaumasters.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% kauthesis.dtx  (with options: `masters')
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
%% kauthesis.dtx
%% Copyright (c) 2011-2013 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{kaumasters}
    [2013/05/03 v1.9 Karlstad University thesis layout]
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{kauclear}
\RequirePackage{kaumeta}
\RequirePackage{kaulist}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage[paper=a4,pagesize,twoside=semi]{typearea}
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
    {\newcommand*\approvalname{%
      \iflanguage{swedish}%
        {Godk\"and}%
        {Approved}}%
    }%
    {\newcommand*\approvalname{Approved}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\examinationname{%
      \iflanguage{swedish}%
        {magisterexamen}%
        {Master's degree}}%
    }%
    {\newcommand*\examinationname{Master's degree}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\approvaltext{%
      \iflanguage{swedish}%
        {Denna uppsats \"ar skriven som en del av det arbete som kr\"avs %
          f\"or att erh\aa lla en \examinationname{} i datavetenskap. Allt %
          material i denna rapport, vilket inte \"ar mitt eget, har blivit %
          tydligt identifierat och inget material \"ar inkluderat som %
          tidigare anv\"ants f\"or erh\aa llande av annan examen.}%
        {This thesis is submitted in partial fulfillment of the %
          requirements for the \examinationname{} in Computer Science. %
          All material in this thesis which is not my own work has been %
          identified and no material is included for which a degree has %
          previously been conferred.}}%
    }%
    {\newcommand*\approvaltext{This thesis is submitted in partial %
      fulfillment of the requirements for the \examinationname{} in %
      Computer Science. All material in this thesis which is not my own %
      work has been identified and no material is included for which a %
      degree has previously been conferred.}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\supervisorname{%
      \iflanguage{swedish}%
        {Handledare}%
        {Supervisor}}%
    }%
    {\newcommand*\supervisorname{Supervisor}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{babel}%
    {\newcommand*\examinername{%
      \iflanguage{swedish}%
        {Examinator}%
        {Examiner}}%
    }%
    {\newcommand*\examinername{Examiner}}%
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
    \newenvironment{english}{%
      \renewcommand\keywords{\paragraph{Keywords:}}%
      \section*{Abstract}%
    }{%
    }
    \cleardoublepage%
    \section*{\@title}%
    \textsc{\prettylist{\@author}}\par%
    \noindent\textit{\@institute}%
    \section*{\abstractname}%
  }{%
    \cleardoublepage%
  }%
}
\newcommand\approvalpage{%
  \cleardoublepage%
  \newcommand\sig{\makebox[7cm]{\hrulefill}\\}%
  \newcommand\signer[1]{\begin{quote}\sig ##1\end{quote}\mbox{}}%
  \noindent\approvaltext\\\mbox{}\bigskip%
  \foreach \x in \@author {\signer{\x}}%
  \\\mbox{}\bigskip\\\mbox{}\bigskip%
  \approvalname,\\\mbox{}\bigskip%
  \begin{quote}%
    \sig\supervisorname: \@supervisor\\\mbox{}\bigskip\\%
    \sig\examinername: \@examiner
  \end{quote}%
}
\newenvironment{acknowledgements}{%
  \cleardoublepage%
  \section*{\acknowledgementname}%
}{%
  \par\bigskip\bigskip\bigskip\noindent\@place, \@date\hfill \prettylist{\@author}%
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
}
\endinput
%%
%% End of file `kaumasters.cls'.

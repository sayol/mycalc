\ProvidesClass{mycalc}
\LoadClass{book}
\RequirePackage{geometry}
\RequirePackage[table]{xcolor}
\RequirePackage{float}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{tkz-tab}
\RequirePackage{tkz-euclide}
\RequirePackage{tcolorbox}
\RequirePackage{subcaption}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
\RequirePackage{newpxtext}
\RequirePackage{tasks}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\colorlet{mycalc}{magenta!67!red}
\geometry{%
	bindingoffset=0.5cm,%
	left=2cm,%
	right=2cm,%
	top=2cm,%
	bottom=2cm}
\usetkzobj{all}
\def\@makechapterhead#1{%
	{\parindent \z@ \raggedright \color{mycalc}\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\if@mainmatter
		\protect\tikz[baseline,every node/.append style={font=\huge\bfseries}]{%
			\protect\node[fill=mycalc!9](chapter)at(0,0){\@chapapp};
			\protect\node[fill=mycalc!9,circle,right](counter)at(chapter.east){\thechapter};
		}
		\par\nobreak
		\vskip 20\p@
		\fi
		\fi
		\interlinepenalty\@M
		\Huge \bfseries #1\par\nobreak
		\vskip 19\p@
}}
\def\@schapter#1{\if@twocolumn
	\@topnewpage[\@makeschapterhead{#1}]%
	\else
	\@makeschapterhead{#1}%
	\@afterheading
	\fi}
\def\@makeschapterhead#1{%
	{\parindent \z@ \raggedright
		\color{mycalc}\normalfont
		\interlinepenalty\@M
		\Huge \bfseries  #1\par\nobreak
		\vskip 19\p@
}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\color{mycalc}\sffamily\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\color{mycalc}\sffamily\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\color{mycalc}\sffamily\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\sffamily\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\color{mycalc}\sffamily\normalsize\bfseries}}
\def\ps@plain{%
	\let\@oddfoot\@empty\let\@evenfoot\@empty
	\def\@evenhead{\color{mycalc}Page \thepage\hfil\slshape\leftmark}%
	\def\@oddhead{\color{mycalc}{\slshape\rightmark}\hfil Page \thepage}%
	\let\@mkboth\markboth
	\def\chaptermark##1{%
		\markboth {%
				\ifnum \c@secnumdepth >\m@ne
				\if@mainmatter
				\thechapter. \ %
				\fi
				\fi
				##1}{}}%
	\def\sectionmark##1{%
		\markright {%
				\ifnum \c@secnumdepth >\z@
				\thesection. \ %
				\fi
				##1}}}
\pagestyle{plain}
\tcbset{%
	colback=mycalc!9,%
	colframe=mycalc,%
	toprule=0pt,%
	bottomrule=0pt,%
	leftrule=0pt,%
	rightrule=0pt,%
	arc=0pt}
\setlist[enumerate]{leftmargin=*}
\SetEnumitemKey{a}{label={\protect\color{mycalc}(\alph*)}}
\SetEnumitemKey{A}{label={\protect\color{mycalc}(\Alph*)}}
\SetEnumitemKey{i}{label={\protect\color{mycalc}(\roman*)}}
\SetEnumitemKey{I}{label={\protect\color{mycalc}(\Roman*)}}
\SetEnumitemKey{1}{label={\protect\color{mycalc}(\arabic*)}}
\theoremstyle{definition}
\newtheorem*{example}{Example}
\newtheorem*{solution}{Solution}
\thm@headfont{\color{mycalc}\bfseries\sffamily}
\def\th@remark{%
	\thm@headfont{\color{mycalc}\bfseries\sffamily}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
\endinput
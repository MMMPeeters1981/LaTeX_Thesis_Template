\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions

\LoadClass{book}





%==========LAY_OUT==============================================

% ----------Size of the paper and the margins----------------
\RequirePackage[paperwidth=17cm, paperheight=24cm, textwidth=12.8cm, textheight
= 19.5cm, top=2.5cm, inner=2.2cm, outer=2cm, bottom=2cm]{geometry}

%Use crop package below to place cutlines in the document

\usepackage[cross,width=17.2cm,height=24.2cm,center]{crop}



%----------text font------------------------------------------

%=== sans serif font ===

%\usepackage[defaultsans]{cantarell} 			% nice option
%\usepackage{PTSansCaption}  			% too conspiculous

\usepackage{tgheros}

%=== serif font ===

%\usepackage[sc]{mathpazo} 				% original choice
%\linespread{1.1}  					% Palatino needs more leading (space between lines)

\usepackage[T1]{fontenc}
%\usepackage[bitstream-charter]{mathdesign} 	% very pretty
\usepackage{charter} 
\usepackage[expert]{mathdesign}

\renewcommand*\rmdefault{bch}
\renewcommand*\sfdefault{qhv}

\newcommand{\HUGE}{\fontsize{46}{50}\selectfont}

%---------inhoudsopgave----------------------------------------
\setcounter{tocdepth}{1} 				%depth of ToC, currently no subsections included


%-----table of contents, in combinatie met titlesec------------
\usepackage{titletoc}  					% customized table of contents
\contentsmargin[2pc]{1em} 				% margin on right side (page nrs)

\titlecontents{part} 					% adjusting the way parts are presented in ToC
[1.3pc] 							% left margin all the way to the left
{\addvspace{1pc}	 					% small vertical space before part starts in ToC
 \filright 			 				% fill out part all the way to the right
 \Large 							% Large font
 \sffamily}  							% sans serif tex gyre heros
{\thecontentslabel 						% part label
}
{}								%
{\titlerule*[1pc]{ } 						% no line
 \small								% small font
 								% no page number 
 \hspace{1em}}						% small white space after for double digits
[\addvspace{0.1pc}]

\titlecontents{chapter} 					% adjusting the way chapters are presented in ToC
[1.3pc]                 						% left margin
{\addvspace{0.5pc}					% bit of white space before chapter line
 \filright 							% 
 \large 							% 
 \sffamily \bfseries}  					% sans serif tex gyre heros
{\thecontentslabel						% chapter label
 \hspace{0.5pc}} 						% space between chapter nr and chapter title	
{}								%
{\titlerule*[1pc]{ } 						% empty line
 \small								% 
 \thecontentspage 						% page nr
 \hspace{1em}}						% 
[\addvspace{.25pc}]					% 

\titlecontents{section} 					% adjusting the way sections are presented in ToC
[2.5pc]                 						% left margin
{\filright 							% 
 \small								% 
 \rmfamily}		   					% font: charter   
{\thecontentslabel						% section label
 \hspace{0.5pc}}						% space between section nr and section title			
{}
{\titlerule*[1pc]{.}						% dotted line
 \thecontentspage 						% page nr
 \hspace{1em}}

\titlecontents{subsection}					% adjusting the way subsections are presented in ToC
[4.2pc]                 						% 
{\filright							%
 \small								% 
 \rmfamily}     						% font: charter  
{\thecontentslabel						% section label
 \hspace{0.5pc}} 						% space between subsection nr and subsection title	
{}
{\titlerule*[1pc]{.}						% dotted line
 \thecontentspage 						% page nr
 \hspace{1em}} 						% 
 
 
\titlecontents{subsubsection} 				% adjusting the way subsubsections are presented in ToC
[6.6pc]                 						% 
{\filright							%
 \small								% 
 \rmfamily}     						% font: charter  
{\thecontentslabel						% section label
 \hspace{0.5pc}} 						% space between subsection nr and subsection title	
{}
{\titlerule*[1pc]{.}						% dotted line
 \thecontentspage 						% page nr
 \hspace{1em}} 						% 

%----------Lay out of headings----------------------------------

\usepackage[explicit]{titlesec}
\titleformat{\chapter}[display] 									% chapter heading customization
  {\Large\sffamily\thispagestyle{empty}}							% format: giga, TeX Gyre Heros, geen header/footer
  {\vspace{8em}\flushright{\MakeUppercase\chaptertitlename\ \thechapter}}		% display the word `Chapter' with the chapternumber
  {6ex} 												% separation between label and title body
  {\titlerule[1.2pt] \vspace{4ex} \filright \Huge \centering #1 \\[2ex]
  \titlerule[1.2pt]}											% Name of the chapter between two horizontal lines and a bit of white space
\titleformat{\section}[hang] 									% Section heading customization
  {\bfseries\sffamily\Large}									% format: large, TeX Gyre Heros, bold printed
  {\thesection} 											% sectionnumber
  {\wordsep}
  {#1} 												% section name
\titleformat{\subsection}[hang] 									% subsection heading customization
  {\bfseries\sffamily\selectfont\large}  								% format: smaller, TeX Gyre Heros, bold
  {\thesubsection} 											% subsection number
  {\wordsep}
  {#1}													% subsection name
\titleformat{\subsubsection}[hang] 								% subsubsection title customization
  {\normalsize\bfseries} 										% regular font, bold, italics
  {}													% subsubsectionnumber
  {}
  {#1} 												% subsubsection name
\titleformat{\paragraph}[runin] 									% paragraph title customization, running in text
  {\normalsize\itshape\bfseries}									% regular font, bold
  {}
  {0pt}
  {#1.\,} 												%sububbsectienaam plus dot

\titlespacing*{\chapter}{0em}{1em}{0pt}[0pt]						% vertical spacing before and after chapter
\titlespacing*{\section} {0pt}{2.5ex plus .5ex minus .2ex}{2ex plus .2ex}[0pt]		% vertical spacing before and after section
\titlespacing*{\subsection} {0pt}{1.8ex plus .5ex minus .2ex}{1.3ex plus .2ex}[0pt] 	% vertical spacing before and after subsection
\titlespacing*{\subsubsection}{0pt}{1ex plus .5ex minus .2ex}{.5ex plus	.2ex}[0pt] 	% vertical spacing before and after subsubsection
\titlespacing*{\paragraph} {0pt}{.2em plus .5ex minus .2ex}{1em}[0pt]			% vertical spacing before and after paragraph

% ----------caption font---------------------------------------
\usepackage[font=small]{caption} 								% font size for captions of figures and tables


%---------witregel gebruik------------------------------------
\usepackage{parskip} 										% use white lines instead of indentation at start of paragraph
\setlength{\parskip}{0pt} 										% set size of white line at start of paragraph
\setlength{\parindent}{10pt}									% set size of indentation at start of paragraph
													% indentation wordt nu gebruikt, maar mogelijk om ook witregel te gebruiken







%=========SPECIALE SECTIES=====================================


%---------Citations/references--------------------------------------
\usepackage[
backend=bibtex,
citestyle=authoryear,
sortcites=true,
uniquename=init,
bibstyle=numeric,
maxnames=99,
maxcitenames=2,
natbib=true,
sorting=nyt,
firstinits=true]{biblatex}

% I used natbib as backend
% references are ordered on name, year, title
% in the running text only the first two authors are mentioned followed by et al.

\DeclareCiteCommand{\fullcite} 		% When issuing the command \fullcite, the first 6 authors are mentioned in the text followed by et al.
  {\usebibmacro{prenote}}
  {\usedriver
     {\defcounter{minnames}{6}%
      \defcounter{maxnames}{6}}
     {\thefield{entrytype}}}
  {\multicitedelim}
  {\usebibmacro{postnote}}
  
\renewcommand{\finalnamedelim}{~\&~}  

\DeclareNameAlias{default}{last-first} %first the last name is presented, thereafter the first name

% Commas as separators
\renewcommand*{\newunitpunct}{\addcomma\space} % fields in the references are separated by commas

% Comma before and after journal volume
\renewbibmacro*{volume+number+eid}{%
  \setunit*{\addcomma\space}% NEW
  \printfield{volume}%
%  \setunit*{\adddot}% DELETED
  \setunit*{\addcomma\space}% NEW
  \printfield{number}%
  \setunit{\addcomma\space}%
  \printfield{eid}}

% Prefixes for journal volume and number
\DeclareFieldFormat[article]{volume}{\bibstring{volume}~#1} % volume of a journal
\DeclareFieldFormat[article]{number}{\bibstring{number}~#1} % number of a journal

% Comma before date; date not in parentheses
\renewbibmacro*{issue+date}{%
  \setunit*{\addcomma\space}% NEW
%  \printtext[parens]{% DELETED
    \iffieldundef{issue}
      {\usebibmacro{date}}
      {\printfield{issue}%
       \setunit*{\addspace}%
%       \usebibmacro{date}}}% DELETED
       \usebibmacro{date}}% NEW
  \newunit}

% Issue/date macros removed after journal number
\renewbibmacro*{journal+issuetitle}{%
  \usebibmacro{journal}%
  \setunit*{\addspace}%
  \iffieldundef{series}
    {}
    {\newunit
     \printfield{series}%
     \setunit{\addspace}}%
  \usebibmacro{volume+number+eid}%
%  \setunit{\addspace}% DELETED
%  \usebibmacro{issue+date}% DELETED
%  \setunit{\addcolon\space}% DELETED
%  \usebibmacro{issue}% DELETED
  \newunit}
  
\DeclareFieldFormat{sentencecase}{\MakeSentenceCase{#1}}

\renewbibmacro*{title}{%
  \ifthenelse{\iffieldundef{title}\AND\iffieldundef{subtitle}}
    {}
    {\ifthenelse{\ifentrytype{article}\OR\ifentrytype{inbook}%
      \OR\ifentrytype{incollection}\OR\ifentrytype{inproceedings}%
      \OR\ifentrytype{inreference}}
      {\printtext[title]{%
        \printfield[sentencecase]{title}%
        \setunit{\subtitlepunct}%
        \printfield[sentencecase]{subtitle}}}%
      {\printtext[title]{%
        \printfield[titlecase]{title}%
        \setunit{\subtitlepunct}%
        \printfield[titlecase]{subtitle}}}%
     \newunit}%
  \printfield{titleaddon}}

% "In:" removed for articles; issue/date macros added after note+pages macro

\DeclareBibliographyDriver{article}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/translator+others}%
  \setunit{\labelnamepunct}\newblock
  \usebibmacro{title}%
  \newunit\newblock
  \usebibmacro{byauthor}%
  \newunit\newblock
  \usebibmacro{bytranslator+others}%
  \newunit\newblock
  \usebibmacro{journal+issuetitle}%
  \newunit\newblock
  \usebibmacro{byeditor+others}%
  \newunit\newblock
  \usebibmacro{issue+date}% NEW
  \usebibmacro{issue}% NEW
  \newunit\newblock
  \usebibmacro{note+pages}%
  \newunit
  \usebibmacro{doi+eprint+url}%
  \newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \usebibmacro{finentry}}

%http://www.ctan.org/pkg/biblatex
  
%~~~~~~~~~~~~~~~kop- en voettekst~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
\usepackage{fancyhdr}												% fancy headers and footers
\setlength{\headheight}{13.6pt}

%---------------set chapter- and sectionmark--------------
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter \ \textendash
\ #1 \  \hfill}{}}
															%leftmark is chapter number and name
\renewcommand{\sectionmark}[1]{\markright{\hfill \ Section \thesection \
\textendash \ #1 }{}}
															%rightmark is section number and name

%----------default pagestyle---------------------------------

\fancypagestyle{default}{
\fancyhf{} 														% clear all header fields
\fancyhead[LO]{\hfill {\small\color{gray}\sffamily \rightmark}
\hspace{0.5em} {\small\color{gray}\sffamily $\vert$ \thepage}}
															% odd pages: section info then pagenumber
\fancyhead[RE]{{\small\color{gray}\sffamily\thepage \ $\vert$} \hspace{0.5em}
{\small\color{gray}\sffamily \leftmark} \hfill}
															% even pages: pagenumber, then chapter information

%\fancyfoot[LE,RO]{\bfseries\color{gray}\sffamily\thepage} 						% page number in foote, currently not used

\renewcommand{\headrulewidth} {0pt} 									% no header rule
\renewcommand{\footrulewidth} {0pt} 										% no footer rule 

}

%-----------plain pagestyle------------------------------------
\fancypagestyle{plain}{												% plain pagestyle only shows the pagenumbers in the header

\fancyhf{} 														%clear headers and footers

\fancyhead[LO]{\hfill {\small\color{gray}\sffamily $\vert$ \thepage}}					% odd page pagenumber
\fancyhead[RE]{{\small\color{gray}\sffamily \thepage \ $\vert$} \hfill}					% even page pagenumber

%\fancyfoot[RO,LE]{\bfseries\color{gray}\thepage}								% possible footer pagenumber, not used here

\renewcommand{\headrulewidth}{0pt} 										% no rules
\renewcommand{\footrulewidth}{0pt}
}

%----------frontpagestyle--------------------------------------
\fancypagestyle{titlepage}{

\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

}

%----------special pagestyle---------------------------------------
\fancypagestyle{biblio}{ 												% only the chapter info, no section info

\fancyhf{} 														
\fancyhead[LO]{
\hfill 
{\small\color{gray}\sffamily Bibliography}
\hspace{0.5em} 
{\small\color{gray}\sffamily $\vert$ \thepage}
}
\fancyhead[RE]{
{\small\color{gray}\sffamily\thepage \ $\vert$} 
\hspace{0.5em} 
{\small\color{gray}\sffamily Bibliography}
\hfill
}

\renewcommand{\headrulewidth} {0pt} 									
\renewcommand{\footrulewidth} {0pt} 										

}

%---------no  headers on whitepages--------------------------
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}
    \thispagestyle{empty}
    \newpage
    \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother \clearpage{\pagestyle{empty}\cleardoublepage}

\newcommand{\cchapter}[1]{\chapter[#1]{\centering #1}}

\makeatletter
\renewcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}
\makeatother


%===========EXTRAs for tables etc.========================

%----------celss consisting of multiple columns in a table ---------------------------------
\usepackage{multicol}


%--------- cells consisting of multiple rows in a table -------------------------------------
\usepackage{multirow}


%-------extra space before or after a line in a table--------------------
\newcommand\T{\rule{0pt}{2.4ex}} \newcommand\B{\rule[-1.3ex]{0pt}{0pt}}


%----------extra table options---------------------------------
\usepackage{supertabular}

% the following code is used to center text in a table with specified widths for
% each column (p{..} becomes C{..})
\usepackage{array}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% the following code is used to create extra whitespace before or after text in
% a table, thereby creating a bit of distance between two rows of text or
% between lines and text
\newcommand\Tstrut{\rule{0pt}{2.2ex}}
\newcommand\Bstrut{\rule[-0.9ex]{0pt}{0pt}}

%==========Inserts======================================


%---------- symbols ------------------------------
\usepackage{amsmath}
\usepackage{mathabx}
\usepackage{MnSymbol}
\usepackage{relsize}

%---------bullets in itemize------------------------------------

\renewcommand{\labelitemi}{$\blackdiamond$}
\renewcommand{\labelitemii}{$\fivedots$}
\renewcommand{\labelitemiii}{$\sqbullet$}
\renewcommand{\labelitemiv}{$\squaredots$}


%----------insert graphs/pictures------------------------------
\usepackage{graphicx}


%----------separate folder for pictures to keep your folder organized-----------------------------------
\graphicspath{{figures/}}


%---------control over picture position-------------------
\usepackage{float}


%----------insert eps figures---------------------------
\usepackage{epstopdf}


%----------tikz draw figures--------------------------------------
\usepackage{tikz} 							%draw figures
\usetikzlibrary{arrows,shapes,positioning,plotmarks} 	%tikz components used


%----------frame text-----------------------------------------
\setlength{\fboxrule}{1pt}%


%----------rename figure and table captions-------------------
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}


%----------standard unit for lengths--------------------------
\setlength{\unitlength}{1mm}


%----------additional control over itemize and enumerate lists-------------------
\usepackage{enumitem}


%---------insert music symbols-----------------------------------------

\usepackage{wasysym}

%----------rotate figures ---------------------------
\usepackage{rotating}


%---------penalties for orphans and widows---------------------
\widowpenalty=300
\clubpenalty=300

%---------set languages----------------------------------------
\usepackage[dutch,english]{babel}

%----------use of colors in header and footer-------------------
\usepackage{xcolor}
\definecolor{lightgray}{gray}{0.95} 			% I used gray

\endinput
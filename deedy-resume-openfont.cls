% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
%\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[top = 0.425in, left = 0.5in, right = 0.5in, bottom = 0.5in]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{000000} 
%\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{primary}{HTML}{000000} 
%\definecolor{headings}{HTML}{6A6A6A}
%\definecolor{headings}{HTML}{000000}
\definecolor{headings}{HTML}{000000}
%\definecolor{subheadings}{HTML}{333333}
\definecolor{subheadings}{HTML}{000000}
\definecolor{location}{HTML}{000000}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
%\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-Heavy}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% DK: Italic font
\newcommand{\italicfont}[1]{\fontspec[Path = fonts/lato/]{Lato-RegIta}\selectfont {#1} \normalfont}
\newcommand{\italicfontThin}[1]{\fontspec[Path = fonts/lato/]{Lato-LigIta}\selectfont {#1} \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		%\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{40pt}{10cm}\selectfont #1   
		\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{32pt}{10cm}\selectfont #1   
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Regular}\fontsize{11pt}{14pt}\selectfont #3} % DK changed from Raleway-Medium
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% DK Custom font size command
\newcommand{\size}[2]{{\fontsize{#1}{0}\selectfont#2}}

% Headings command -- DK changed \raggedright to \centering, black font and bold and Lato-Reg
\titleformat{\section}{\color{000000}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{24pt}\selectfont \centering\bfseries\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{13pt}\selectfont {#1} \normalfont}
%\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command -- DK changed color
\newcommand{\location}[1]{\color{location} \fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

%\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

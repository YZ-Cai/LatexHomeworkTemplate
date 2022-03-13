%
% Choose template language
% preserve line 5 or 6 and comment the other
%
\def\hmwkLanguage{E}        % English template, but also supports Chinese in document body
% \def\hmwkLanguage{C}      % Chinese template, 取消本行注释，以使用中文模板（首页、页眉等）


%
% Use Page Header or not
%
\def\hmwkPageHeader{1}          % use page header
% \def\hmwkPageHeader{0}        % not use page header


%
% based on article class
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2021/10/04 v1.0 homework Template]
\LoadClass{article} 


%
% necessary packages
%

\usepackage{fancyhdr}
\usepackage{extramarks}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amsfonts}
\usepackage{tikz}
\usepackage{algorithm}
\usepackage{algpseudocode}
\usepackage{enumerate}
\usepackage{listings}
\usepackage{xcolor}
\usepackage{cite}
\usepackage{graphicx}
\usepackage{bm}
\usepackage{ctex}


%
% for graph visualization
%

\usetikzlibrary{automata,positioning}


%
% Basic Document Settings
%

\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

\linespread{1.1}

\if \hmwkPageHeader 1
    \pagestyle{fancy}
    \if\hmwkLanguage E
        \lhead{\hmwkAuthorName}
        \chead{\hmwkClass: \hmwkTitle}
    \else
        \lhead{\hmwkAuthorNameCN}
        \chead{\hmwkClassCN: \hmwkTitleCN}
    \fi
    \if\hmwkLanguage E
        \author{\hmwkAuthorName}
    \else
        \author{\hmwkAuthorNameCN}
    \fi
    \rhead{\firstxmark}
    \lfoot{\lastxmark}
\fi
\cfoot{\thepage}

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}


%
% Create Problem Sections
%

\newcommand{\enterProblemHeader}[1]{
    \if\hmwkLanguage E
        \nobreak\extramarks{}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
        \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \else
        \nobreak\extramarks{}{问题 \arabic{#1} 在下一页继续\ldots}\nobreak{}
        \nobreak\extramarks{问题 \arabic{#1} (接上页)}{问题 \arabic{#1} 在下一页继续\ldots}\nobreak{}
    \fi
}

\newcommand{\exitProblemHeader}[1]{
    \if\hmwkLanguage E
        \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
        \stepcounter{#1}
        \nobreak\extramarks{Problem \arabic{#1}}{}\nobreak{}
    \else
        \nobreak\extramarks{问题 \arabic{#1} (接上页)}{问题 \arabic{#1} 在下一页继续\ldots}\nobreak{}
        \stepcounter{#1}
        \nobreak\extramarks{问题 \arabic{#1}}{}\nobreak{}
    \fi
}

\setcounter{secnumdepth}{0}
\newcounter{partCounter}
\newcounter{homeworkProblemCounter}
\setcounter{homeworkProblemCounter}{1}
\if\hmwkLanguage E
    \nobreak\extramarks{Problem \arabic{homeworkProblemCounter}}{}\nobreak{}
\else
    \nobreak\extramarks{问题 \arabic{homeworkProblemCounter}}{}\nobreak{}
\fi

%
% Homework Problem Environment
%
% This environment takes an optional argument. When given, it will adjust the
% problem counter. This is useful for when the problems given for your
% assignment aren't sequential. See the last 3 problems of this template for an
% example.
%
\newenvironment{homeworkProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \vspace{0.2in}
    \if\hmwkLanguage E
        \section{Problem \arabic{homeworkProblemCounter}}
    \else
        \section{问题 \arabic{homeworkProblemCounter}}
    \fi
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}


% Alias for the Solution section header
\newcommand{\solution}[1][-1]{
    
    \ifnum#1>0
        \vspace{0.2in}
        \if\hmwkLanguage E
            \textbf{\large Solution of (#1)}
        \else
            \textbf{\large 解答 (#1)}
        \fi
        \vspace{0.1in}
    \else
        \vspace{0.2in}
        \if\hmwkLanguage E
            \textbf{\large Solution}
        \else
            \textbf{\large 解答}
        \fi
        \vspace{0.1in}
    \fi
    
}


%
% Title Page
%

\title{
    \vspace{3in}
    \if\hmwkLanguage E
        \huge{\textbf{\hmwkClass}}\\
        \vspace{0.4in}
        \huge{\textbf{\hmwkTitle}}\\
        \vspace{0.4in}
        \normalsize{Due on \hmwkDueDate}\\
    \else
        \Huge{\textbf{\hmwkClassCN}}\\
        \vspace{0.3in}
        \Huge{\textbf{\hmwkTitleCN}}\\
        \vspace{0.4in}
        \normalsize{截止日期：\hmwkDueDateCN}\\
    \fi
    \vspace{2.4in}
}

\if\hmwkLanguage E
    \author{\hmwkAuthorName}
\else
    \author{\hmwkAuthorNameCN}
\fi
\date{}


%
% Various Helper Commands
%

% Useful for algorithms
\newcommand{\alg}[1]{\textsc{\bfseries \footnotesize #1}}

% For derivatives
\newcommand{\deriv}[1]{\frac{\mathrm{d}}{\mathrm{d}x} (#1)}

% For partial derivatives
\newcommand{\pderiv}[2]{\frac{\partial}{\partial #1} (#2)}

% Integral dx
\newcommand{\dx}{\mathrm{d}x}

% Probability commands: Expectation, Variance, Covariance, Bias
\newcommand{\E}{\mathrm{E}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\Bias}{\mathrm{Bias}}


%
% codes setting
%

\definecolor{codeRed}{RGB}{160,21,21} 
\definecolor{codeGreen}{RGB}{0,64,0}  
\definecolor{codeBlue}{RGB}{10,70,196} 
\definecolor{codeGrey}{rgb}{0.5,0.5,0.5} 
\definecolor{backgroundGrey}{RGB}{248,248,248} 
\lstset{ %  
  backgroundcolor=\color{backgroundGrey},       % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}  
  basicstyle=\footnotesize,                     % the size of the fonts that are used for the code  
  breakatwhitespace=false,                      % sets if automatic breaks should only happen at whitespace  
  breaklines=true,                              % sets automatic line breaking  
  captionpos=bl,                                % sets the caption-position to bottom  
  commentstyle=\color{codeGreen},               % comment style  
  deletekeywords={...},                         % if you want to delete keywords from the given language  
  escapeinside={\%*}{*)},                       % if you want to add LaTeX within your code  
  extendedchars=true,                           % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8  
  frame=none,                                   % adds a frame around the code; possible values are (none, single, ..)
  keepspaces=true,                              % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)  
  keywordstyle=\color{codeBlue},                % keyword style    
  morekeywords={*,...},                         % if you want to add more keywords to the set  
  numbers=left,                                 % where to put the line-numbers; possible values are (none, left, right)  
  numbersep=5pt,                                % how far the line-numbers are from the code  
  numberstyle=\tiny\color{codeGrey},            % the style that is used for the line-numbers  
  rulecolor=\color{black},                      % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))  
  showspaces=false,                             % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'  
  showstringspaces=false,                       % underline spaces within strings only  
  showtabs=false,                               % show tabs within strings adding particular underscores  
  stepnumber=1,                                 % the step between two line-numbers. If it's 1, each line will be numbered  
  stringstyle=\color{codeRed},                  % string literal style  
  tabsize=2,                                    % sets default tabsize to 2 spaces  
}  
\ProvidesClass{mathbook}[02/03/2021 - A class to help create the math book assignment]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

% \newcommand{\@teacher}{\space}
\newcommand{\@assignmentName}{\space}
\newcommand{\@course}{\space}
\newcommand{\@school}{\space}
\newcommand{\@seal}{\space}
\newcommand{\@schoolLogo}{\space}
\newcommand{\@teacher}{\space}
\newcommand{\@subtitle}{\space}

\newcommand{\teacher}[1]{\gdef\@teacher{#1}}
\newcommand{\assignment}[1]{\gdef\@assignmentName{#1}}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\course}[1]{\gdef\@course{#1}}
\newcommand{\school}[1]{\gdef\@school{#1}}
\newcommand{\schoolLogo}[1]{\gdef\@schoolLogo{#1}}
\newcommand{\seal}[1]{\gdef\@seal{#1}}

\newlength{\titlespace}

\setlength{\titlespace}{2cm}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \Huge{\bf\@assignmentName\par}
        \vspace{\titlespace}
        \huge{\emph\@subtitle\par}
        \vspace{0.5\titlespace}
        \large{By \@author\par}
        \vspace{1.5\titlespace}
        \huge{\@course\par}
        \vspace{\titlespace}
        \normalsize{\@teacher\space\emph\@date\par}
        \vfill
        \setlength{\tabcolsep}{0pt}
        \begin{minipage}{0.3\textwidth}
            \centering
            \includegraphics[scale=0.4]{\@schoolLogo}
            % Test
        \end{minipage}
        \begin{minipage}{0.3\textwidth}
            \centering
            \Large{\bf\@school\par}
        \end{minipage}
        \begin{minipage}{0.3\textwidth}
            \centering
            \includegraphics[scale=0.3]{\@seal}
        \end{minipage}
    \end{titlepage}
}
\newcounter{summarycounter}

\newcommand{\summary}[1]{\stepcounter{summarycounter}\large{\textbf{Part \thesummarycounter:\space}\emph{Summary}\space #1}\par\vspace{1cm}}

% \newcommand{\summary}[1]{Test}
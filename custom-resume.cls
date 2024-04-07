%
% Custom Resume - Class File
%
% Based on the following Canva design by Saga Design Studio:
%   https://www.canva.com/p/templates/EAFSLI7n6x4-minimalist-white-and-grey-professional-resume/
%
% Created by Deren Teo
%

%-------------------------------------------------------------------------------
% CLASS METADATA
%-------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-resume}[2024/03/31 Custom resume class]

% \RequirePackage{...}
\RequirePackage{fix-cm}             % enable arbitrary size scaling of CM fonts
\RequirePackage{graphicx}           % inserting & scaling contact icons
\RequirePackage{soul}               % increase inter-letter space
\RequirePackage{xcolor}             % font and graphics colours

% \DeclareOption{...}{...}

\LoadClass{article}                 % build on the article class

\pagestyle{empty}                   % remove page numbers

% Set default font size to 9pt, reduce line spacing to 85% of default
\renewcommand{\normalsize}{\fontsize{10}{0.85\baselineskip}\selectfont}

% soul configuration
\sodef\LooseSpacing{}{0.25em}{1em}{0em}

% xcolor configuration
\definecolor{f2f2f2}{HTML}{F2F2F2}  % even lighter grey
\definecolor{dfdfdf}{HTML}{DFDFDF}  % lighter grey
\definecolor{595959}{HTML}{595959}  % grey
\definecolor{7f7f7f}{HTML}{7F7F7F}  % darker grey
\definecolor{a6a6a6}{HTML}{A6A6A6}  % even darker grey

%-------------------------------------------------------------------------------
% BACKGROUND DETAIL
%-------------------------------------------------------------------------------

\newcommand{\TitleRule}{%
    {
        \centering
        \textcolor{7f7f7f}{
            \rule{0.92\textwidth}{0.4pt}
        }
        \par
    }
}

\newcommand{\SectionRule}{%
    {
        \centering
        \textcolor{7f7f7f}{
            \hbox to \textwidth{\leaders\hbox to 2.5pt{\hss . \hss}\hfil}
        }
    }
}

\newcommand{\FooterRule}{%
    {
        \centering
        \textcolor{a6a6a6}{
            \rule{0.92\textwidth}{0.4pt}
        }
        \par
    }
}

%-------------------------------------------------------------------------------
% TITLE BLOCK
%-------------------------------------------------------------------------------

\newcommand{\SetName}[1]{%
    {
        \centering
        \fontsize{28}{\baselineskip}\selectfont
        \textcolor{595959}{
            \MakeUppercase{
                \LooseSpacing{#1}
            }
        }
        \par
    }
    \vspace{18pt}
}

\newcommand{\SetSubtitle}[1]{%
    {
        \centering
        \fontsize{10}{\baselineskip}\selectfont
        \textcolor{595959}{
            \MakeUppercase{%
                \LooseSpacing{#1}
            }
        }
        \par
    }
    \vspace{12pt}
}

%-------------------------------------------------------------------------------
% SECTION FORMATTING
%-------------------------------------------------------------------------------

\renewenvironment{section}[1]{
    \begingroup
        \color{595959}
        \vspace{8pt}
        {
            \fontsize{12}{\baselineskip}\selectfont
            \MakeUppercase{%
                \LooseSpacing{#1}
            }
        }
        \par
        \vspace{12pt}
}
{
        \vspace{12pt}
        \SectionRule
    \endgroup
}

% "Starred" (*) version does not put SectionRule at the end of the section
\newenvironment{section*}[1]{
    \begingroup
        \color{595959}
        \vspace{8pt}
        {
            \fontsize{12}{\baselineskip}\selectfont
            \MakeUppercase{%
                \LooseSpacing{#1}
            }
        }
        \par
        \vspace{12pt}
}
{
        \vspace{12pt}
    \endgroup
}

%-------------------------------------------------------------------------------
% CONTACT SECTION
%-------------------------------------------------------------------------------

\newcommand{\SetPhone}[1]{%
    \vspace{0.5em}
    \raisebox{-0.25\height}{\includegraphics[scale=0.7]{static/icon_phone.png}}
    \hspace{0.5em}
    \textcolor{7f7f7f}{#1}
    \par
}

\newcommand{\SetEmail}[1]{%
    \vspace{0.5em} \hspace{-3pt}
    \raisebox{-0.25\height}{\includegraphics[scale=0.7]{static/icon_mail.png}}
    \hspace{0.5em}
    \textcolor{7f7f7f}{#1}
    \par
}

\newcommand{\SetLinkedin}[1]{%
    \vspace{0.5em} \hspace{-2.5pt}
    \raisebox{-0.25\height}{\includegraphics[scale=0.65]{static/icon_linkedin.png}}
    \hspace{0.5em}
    \textcolor{7f7f7f}{#1}
    \par
}

\newcommand{\SetLocation}[1]{%
    \vspace{0.5em}
    \raisebox{-0.2\height}{\includegraphics[scale=0.7]{static/icon_location.png}}
    \hspace{0.5em}
    \textcolor{7f7f7f}{#1}
    \par
}

%-------------------------------------------------------------------------------
% REFERENCES SECTION
%-------------------------------------------------------------------------------

\newcommand{\CreateReference}[3]{%
    \hspace{-1.5cm}
    \colorbox{dfdfdf}{
    \begin{minipage}[t]{1.2\textwidth}
        % Nest another minipage to create a "left margin"
        \hspace{2ex}
        \begin{minipage}[t]{\textwidth}
            \raggedright
            \small

            \vspace{8pt}
            \textcolor{7f7f7f}{\textbf{#1}} \par    % reference name
            \vspace{8pt}
            \textcolor{7f7f7f}{\textit{#2}} \par    % reference position/title
            \vspace{8pt}
            \raisebox{-0.25\height}{\includegraphics[scale=0.7]{static/icon_mail.png}}
            \hspace{0.2em}
            \textcolor{7f7f7f}{#3}                  % reference email
            \vspace{8pt}
        \end{minipage}
    \end{minipage}} \par
}

\NeedsTeXFormat{LaTeX2e}[1994/06/01]%
\ProvidesClass{plantillasEPS}[2019/10/16 v1.1 plantillasEPS class (EA)]%
\typeout{Class: plantillasEPS v1.1 <2019/10/16> (Eloy Anguiano)}%


% Condicionales para controlar las opciones de la clase

\newif\if@invitacionbool \@invitacionboolfalse%
\newif\if@normalbool \@normalbooltrue%
\newif\if@cartabool \@cartaboolfalse%
\newif\if@serifbool \@serifboolfalse%
\newif\if@numeradobool \@numeradoboolfalse%
\newif\if@tarjetabool \@tarjetaboolfalse%
\newif\if@encabezadobool \@encabezadoboolfalse%

% Opciones de la clase para cada tipo de documento. La opción tarjeta anula a las demás. 
% La opción invitacion anula todas las demás. No se pueden poner ambas
\DeclareOption{serif}{\@serifbooltrue}%
\DeclareOption{numerado}{\@numeradobooltrue}%
\DeclareOption{invitacion}{\@invitacionbooltrue \@normalboolfalse \@serifbooltrue \@numeradoboolfalse}%
\DeclareOption{carta}{\@cartabooltrue \@normalboolfalse}%
\DeclareOption{tarjeta}{\@tarjetabooltrue \@invitacionboolfalse \@normalboolfalse \@serifboolfalse \@numeradoboolfalse}%
\ProcessOptions\relax%
\LoadClass{book}%

% Carga de paquetes utilizados por defecto
\@ifpackageloaded{babel}{\PassOptionsToPackage{spanish}{babel}}{\RequirePackage[spanish]{babel}}%
\@ifpackageloaded{fancybox}{}{\RequirePackage{fancybox}}%
\@ifpackageloaded{lastpage}{}{\RequirePackage{lastpage}}%
\@ifpackageloaded{pgf}{}{\RequirePackage{pgf}}%
\@ifpackageloaded{marvosym}{}{\RequirePackage{marvosym}}%
\@ifpackageloaded{xcolor}{}{\RequirePackage{xcolor}}%
\@ifpackageloaded{fancyhdr}{}{\RequirePackage{fancyhdr}}%
\@ifpackageloaded{hyperref}{}{\RequirePackage[colorlinks=False, pdfborder={0 0 0}]{hyperref}}%
\@ifpackageloaded{xparse}{}{\RequirePackage{xparse}}%
\@ifpackageloaded{xeCJK}{}{\RequirePackage{xeCJK}}%

% Definición de colores institucionales
\definecolor{uamblue}{HTML}{0077c8}%
\definecolor{uamgreen}{HTML}{4a7729}%
\definecolor{uamgray}{HTML}{75787b}%
\definecolor{epsblue}{HTML}{0085c3}%En el documento usar el uamblue
\definecolor{epsgreen}{HTML}{5bb545}%En el documento usar el uamgreen
\definecolor{epsorange}{HTML}{e08429}%
\definecolor{epsyellow}{HTML}{fcdb00}%

% Definición de las fuentes de texto.
\@ifpackageloaded{fontspec}{%
    \fontsize{11}{12} \selectfont%
    \if@serifbool%
        \setmainfont[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
        \newfontfamily{\sanserif}[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\serif}[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
    \else%
        \setmainfont[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\sanserif}[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\serif}[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
    \fi%
}{%
    \fontsize{11}{12} \selectfont%
    \if@serifbool%
        \RequirePackage{fontspec}%
        \setmainfont[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
        \newfontfamily{\sanserif}[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\serif}[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
    \else%
        \RequirePackage{fontspec}%
        \setmainfont[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\sanserif}[%
            UprightFont={*light},%
            BoldFont={*bold},%
            ItalicFont={*italic},%
            Extension=.ttf,%
            ]{frank-}%
        \newfontfamily{\serif}[%
            UprightFont={* Regular},%
            BoldFont={* Medium},%
            ItalicFont={* Italic},%
            BoldItalicFont={* Medium Italic},%
            UprightFeatures = { SmallCapsFont={* Regular Small Caps} } ,%
            BoldFeatures= { SmallCapsFont={* Medium Small Caps} } ,%
            Extension=.ttf,%
            ]{Berthold Walbaum Book}%
    \fi%
}%

% Formato de la numeración
\if@numeradobool\fancyfoot[C]{\begin{small}\thepage/\pageref{LastPage}\end{small}}\else\fancyhf{}\fi%

\newenvironment{asisten}{\begin{description}}{\end{description}}%
    
\let\olditem\item%
\renewcommand{\item}[1][]{\ifx&#1&\olditem\else\olditem[{\color{uamgreen}\normalfont{#1}}]\mbox{}\fi}%
    
\renewcommand{\labelitemi}{$\bullet$}%
\renewcommand\labelitemii{$\diamond$}%
\renewcommand\labelitemiii{$\circ$}%
\renewcommand\labelitemiv{$\centerdot$}%

% Formato firma
\NewDocumentCommand{\firmado}{O{5cm} O{\vfill} m O{2cm} O{}}{%
    \if#2\vfill\vfill\else\vspace*{#2}\fi%
    \hfill%
    \ifx&#1&\begin{minipage}[b]{5cm}\else\begin{minipage}[b]{#1}\fi%
    \ifx&#4&%
        \ifx&#5&\vspace*{2cm}\else\begin{center}\pgfimage[height=2cm]{#5}\end{center}\fi%
    \else%
        \ifx&#5&\vspace*{#4}\else\begin{center}\pgfimage[height=#4]{#5}\end{center}\fi%
    \fi%
    \begin{center}#3\end{center}%
    \end{minipage}%
}

% Formato firmafecha
\NewDocumentCommand{\firmadofechado}{O{5cm} O{\vfill} m m O{2cm} O{}}{%
    \if#2\vfill\vfill\else\vspace*{#2}\fi%
    \hfill%
    \ifx&#1&\begin{minipage}[b]{5cm}\else\begin{minipage}[b]{#1}\fi%
        {\flushright En Madrid a \ifx&#4&\today\else#4\fi}
        \ifx&#5&%
            \ifx&#6&\vspace*{2cm}\else\begin{center}\pgfimage[height=2cm]{#6}\end{center}\fi%
        \else%
            \ifx&#5&\vspace*{#5}\else\begin{center}\pgfimage[height=#5]{#6}\end{center}\fi%
        \fi%
        \begin{center}#3\end{center}%
    \end{minipage}%
}%

\newcommand{\fechado}[1][\today]
{
    \vspace*{2cm}%
    \hfill En Madrid a #1
}

% Formato encabezamiento
\NewDocumentCommand{\encabezamiento}{m O{} m O{} m O{}}{%
    \@encabezadobooltrue
    \def\nombreaux{#1}
    \def\cargoaux{#2}
    \def\telefonoaux{#3}
    \def\movilaux{#4}
    \def\emailaux{#5}
    \def\paisaux{#6}
}%

\newcommand{\impencabezamiento}
{{%
    \if@encabezadobool%
        \fontsize{7}{8}\selectfont%
        %\mbox{}\vspace*{-1.5cm}
        \flushright\nombreaux\\%
        \ifx&\cargoaux&\else\textbf{\cargoaux}\\\fi%
        \vspace*{2mm}
        \Telefon\ \telefonoaux\\
        \ifx&\movilaux&\else\Mobilefone\ \movilaux\\\fi%
        \Email\ \href{mailto:\emailaux}{\emailaux}\\%
        \vspace*{2mm}
        Escuela Politécnica Superior\\%
        Universidad Autónoma de Madrid\\%
        C/ Francisco Tomás y Valiente, nº 11\\%
        Madrid--28049%
        \ifx&\paisaux\\&\par\else, \paisaux\par\fi%
    \fi%
}}%

% Estructura prefijada de las invitaciones
\if@invitacionbool
    % Tamaño y márgenes
    \@ifpackageloaded{geometry}{\PassOptionsToPackage{papersize={210mm,110mm},tmargin=20mm,bmargin=10mm,lmargin=60mm,rmargin=15mm}{geometry}}{\RequirePackage[papersize={210mm,110mm},tmargin=20mm,bmargin=10mm,lmargin=60mm,rmargin=15mm]{geometry}}%
    % Definición de variables de entrada
    \def\invitante{\def\invitanteaux}%
    \def\acto{\def\actoaux}%
    \def\lugar{\def\lugaraux}%
    \def\confirmacion{\def\confirmacionaux}%
    % Estructura predefinida
    \pagestyle{empty}%
    \fancyput*(-0.15\textwidth,-0.07\textheight){\href{https://www.uam.es}{\pgfimage[width=0.3\textwidth]{UAMcenter}}}%
    \fancyput*(-0.10\textwidth,-0.90\textheight){\href{https://www.eps.uam.es}{\pgfimage[width=0.20\textwidth]{EPScenter}}}%
    \newenvironment{smaller}{\fontsize{8}{9}\selectfont}{}%
    \newcommand{\invitacion}[5]%
    {%
        \begin{document}
            \fontsize{10}{12} \selectfont%
            \begin{center}%
            \MakeUppercase{#1}\fontsize{10}{14}\selectfont\\tiene el honor de invitarle al%
            \end{center}%
            \vfill%
            \begin{center}%
            \fontsize{13}{13}\selectfont%
            \color{uamblue}#2%
            \end{center}%
            \vfill%
            \begin{center}%
            \fontsize{9}{14}\selectfont%
            #3%    
            \end{center}%
            \vfill%
            \vfill%
            \begin{minipage}[t]{0.48\textwidth}%
            \begin{center}%
            \sanserif%
            \begin{smaller}%
            #4%
            \end{smaller}%
            \end{center}%
            \end{minipage}\hfill%
            \begin{minipage}[t]{0.48\textwidth}%
            \begin{center}%
            \sanserif%
            \begin{smaller}%
            \href{mailto://#5?subject=[CONF-ASIST] Confirmación de asistencia}{Se ruega confirmación a: #5}%
            \end{smaller}%
            \end{center}%
            \end{minipage}%
        \end{document}
    }%
\fi%

% Definición de estructura para el resto de documentos
\if@normalbool
    \@ifpackageloaded{geometry}{\PassOptionsToPackage{a4paper,tmargin=45mm,bmargin=26.7mm,
    lmargin=28mm,rmargin=35mm,asymmetric}{geometry}}{\RequirePackage[a4paper,tmargin=45mm,
    bmargin=26.7mm,lmargin=28mm,rmargin=35mm,footskip=18mm,asymmetric]{geometry}}%
    \pgfdeclareimage[width=3.92cm]{EPSbig}{EPScenter}%
    \pgfdeclareimage[width=5.26cm]{EPSsmall}{EPShorizontal}%
    \pgfdeclareimage[width=5.97cm]{UAMbig}{UAMcenter}%
    \pgfdeclareimage[width=5.44cm]{UAMsmall}{UAMhorizontal}%
    \renewcommand{\baselinestretch}{1.2}%
    \setlength{\parskip}{0.7\baselineskip}%
    
    \def\title{\def\tituloaux}%
    \title{}%

    \AtBeginDocument{%
        \pagestyle{fancy}%        
        \renewcommand{\headrulewidth}{0pt}%
        \renewcommand{\footrulewidth}{0pt}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+1.3cm,\dimexpr 1in-2.07cm){\href{https://www.uam.es}{\pgfuseimage{UAMsmall}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in + \paperwidth -6.56cm,\dimexpr 1in-2.07cm){\href{https://www.eps.uam.es}{\pgfuseimage{EPSsmall}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-1cm){\color{uamblue}\rule{1pt}{1cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-27.3cm){\color{uamblue}\rule{1pt}{24.4cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-29.7cm){\color{uamblue}\rule{1pt}{1cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr 28mm-1in,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.uam.es}{\serif Universidad Autónoma de Madrid}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(13cm,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.eps.uam.es}{\serif Escuela Politécnica Superior}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-27.3cm){\color{uamblue}\rule{1pt}{23.6cm}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-29.7cm){\color{uamblue}\rule{1pt}{1cm}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in + \paperwidth -4.98cm,\dimexpr 1in-3.93cm){\href{https://www.eps.uam.es}{\pgfuseimage{EPSbig}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+1.05cm,\dimexpr 1in-3.93cm){\href{https://www.uam.es}{\pgfuseimage{UAMbig}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr 28mm-1in,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.uam.es}{\serif Universidad Autónoma de Madrid}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(13cm,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.eps.uam.es}{\serif Escuela Politécnica Superior}}}%
        \parskip = 1.7ex%
        \parindent = 0em%
        \impencabezamiento%
        {\serif\fontsize{15}{16}\selectfont\textbf{\textsc{\color{uamblue}\tituloaux\color{black}}}}%
    }%
    
    \newcounter{@sectionnum}%
    \newcounter{@subsectionnum}[@sectionnum]%
    
    \renewcommand{\chapter}[1]{\vspace*{1.5cm}\begin{large}\color{uamblue}#1\color{black}\end{large}\par\vspace{.5ex}}%
    
    \renewcommand{\section}{\par\secdef\mysection\mysectionn}%
    \def\mysection[#1]#2{\stepcounter{@sectionnum}\color{uamgreen}\arabic{@sectionnum}.-- #2\color{black}\par\vspace{.5ex}}%
    \def\mysectionn#1{\color{uamgreen}#1\color{black}\par\vspace{.5ex}}%
    
    \renewcommand{\subsection}{\par\secdef\mysubsection\mysubsectionn}%
    \def\mysubsection[#1]#2{\stepcounter{@subsectionnum}\color{uamgreen}\hspace*{2em}\arabic{@sectionnum}.\arabic{@subsectionnum}.-- #2\color{black}\phantom{ }}%
    \def\mysubsectionn#1{\color{uamgreen}\hspace*{2em}#1\color{black}\phantom{ }}%
    
\fi%

% Definición de estructura para el resto de documentos
\if@cartabool
    \@ifpackageloaded{geometry}{\PassOptionsToPackage{a4paper,tmargin=45mm,bmargin=26.7mm,
    lmargin=28mm,rmargin=35mm,asymmetric}{geometry}}{\RequirePackage[a4paper,tmargin=45mm,
    bmargin=26.7mm,lmargin=28mm,rmargin=35mm,footskip=18mm,asymmetric]{geometry}}%
    \pgfdeclareimage[height=1.49cm]{EPSbig}{EPShorizontal}%
    \pgfdeclareimage[width=5.26cm]{EPSsmall}{EPShorizontal}%
    \pgfdeclareimage[height=1.49cm]{UAMbig}{UAMhorizontal}%
    \pgfdeclareimage[width=5.44cm]{UAMsmall}{UAMhorizontal}%
    \renewcommand{\baselinestretch}{1.2}%
    \setlength{\parskip}{0.7\baselineskip}%

    \def\title{\def\tituloaux}%
    \title{}%
    
    \AtBeginDocument{%
        \pagestyle{fancy}%        
        \renewcommand{\headrulewidth}{0pt}%
        \renewcommand{\footrulewidth}{0pt}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+1.3cm,\dimexpr 1in-2.07cm){\href{https://www.uam.es}{\pgfuseimage{UAMsmall}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in + \paperwidth -6.56cm,\dimexpr 1in-2.07cm){\href{https://www.eps.uam.es}{\pgfuseimage{EPSsmall}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-1cm){\color{uamblue}\rule{1pt}{1cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-27.3cm){\color{uamblue}\rule{1pt}{24.4cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-29.7cm){\color{uamblue}\rule{1pt}{1cm}}%
        \fancyput*{\mbox{}}%
        \fancyput*(\dimexpr 28mm-1in,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.uam.es}{\serif Universidad Autónoma de Madrid}}}%
        \fancyput*{\mbox{}}%
        \fancyput*(13cm,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.eps.uam.es}{\serif Escuela Politécnica Superior}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in + \paperwidth -9.12cm,\dimexpr 1in-2.76cm){\href{https://www.eps.uam.es}{\pgfuseimage{EPSbig}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+1.53cm,\dimexpr 1in-2.76cm){\href{https://www.uam.es}{\pgfuseimage{UAMbig}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr 28mm-1in,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.uam.es}{\serif Universidad Autónoma de Madrid}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(13cm,-25.6cm){\fontsize{9}{10}\selectfont\color{uamblue}{\href{https://www.eps.uam.es}{\serif Escuela Politécnica Superior}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-27.3cm){\color{uamblue}\rule{1pt}{23.6cm}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+18.8cm,\dimexpr 1in-29.7cm){\color{uamblue}\rule{1pt}{1cm}}%
        \parskip = 1.7ex%
        \parindent = 0em%
        \impencabezamiento%
        {\serif\fontsize{15}{16}\selectfont\textbf{\textsc{\color{uamblue}\tituloaux\color{black}}}}%
    }%
    
    \renewcommand{\chapter}[1]{
        \vspace*{1.5cm}{\serif\fontsize{14}{15}\color{uamblue}\textbf{#1}\color{black}\par\vspace{.5ex}}}%
    
    \renewcommand{\section}{\par\secdef\mysection\mysectionn}%
    \def\mysection[#1]#2{{\serif\fontsize{12}{13}\color{uamgreen}\textbf{#2}\color{black}\par\vspace{.5ex}}}%
    \def\mysectionn#1{{\serif\fontsize{12}{13}\color{uamgreen}\textbf{#1}\color{black}\par\vspace{.5ex}}}%
    
    \renewcommand{\subsection}{\par\secdef\mysubsection\mysubsectionn}%
    \def\mysubsection[#1]#2{{\serif\fontsize{12}{13}\color{uamgreen}#2\color{black}\par\vspace{.5ex}}}%
    \def\mysubsectionn#1{{\serif\fontsize{12}{13}\color{uamgreen}#1\color{black}\par\vspace{.5ex}}}%
    \fontsize{12}{13}
    
\fi%

% Estructura prefijada de tarjetas
\if@tarjetabool%
    \@ifpackageloaded{hyphenat}{\PassOptionsToPackage{none}{hyphenat}}{\RequirePackage[none]{hyphenat}}%
    \pgfdeclareimage[width=1.5cm]{EPS}{EPScenter}%
    \pgfdeclareimage[width=3.5cm]{UAM}{UAMhorizontalB}%
    \parindent=0mm%
    
    \newcommand{\unatarjeta}[6]{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr #4mm*55-1in+5mm+210mm/2-55mm*3/2+#6mm,\dimexpr 25mm-#5mm*90-25mm-297mm/2+90mm*3/2){\href{https://www.uam.es}{\pgfuseimage{UAM}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr #4mm*55-1in+35mm+210mm/2-55mm*3/2+#6mm,\dimexpr -#5mm*90+8mm-297mm/2+90mm*3/2){\href{https://www.uam.es}{\pgfuseimage{EPS}}}%
        \mbox{}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr#4mm*55-1in+4mm+210mm/2-55mm*3/2+#6mm,\dimexpr 25.5mm-#5mm*90-297mm/2+90mm*3/2){
            \begin{minipage}[t][90mm][t]{45mm}%
                \vspace*{38mm}%
                \fontsize{9.5}{10.5}\selectfont#1\\[-2ex]%
                \fontsize{7}{8}\selectfont\begin{flushleft}\textbf{\color{uamgreen}#2}\end{flushleft}%
            \vfill%
            \fontsize{6.7}{9.7}\selectfont#3\\\mbox{}%
            \end{minipage}%
        }%
    }%
    
    \newcommand{\tarjetaunica}[3]{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+5mm,0mm){\href{https://www.uam.es}{\pgfuseimage{UAM}}}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+35mm,8mm){\href{https://www.uam.es}{\pgfuseimage{EPS}}}%
        \mbox{}%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+4mm,25.5mm){
            \begin{minipage}[t][90mm][t]{45mm}%
                \vspace*{38mm}%
                \fontsize{9.5}{10.5}\selectfont#1\\[-2ex]%
                \fontsize{7}{8}\selectfont\begin{flushleft}\textbf{\color{uamgreen}#2}\end{flushleft}%
            \vfill%
            \fontsize{6.7}{9.7}\selectfont#3\\\mbox{}%
            \end{minipage}%
        }%
    }%
    
    \def\lmark#1#2{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+13mm+#2mm,\dimexpr 25.5mm-#1mm*90-297mm/2+90mm*3/2){%
            \put(0,0){\circle{10}}%
            \put(-60,0){\line(1,0){90}}%
            \put(0,-10){\line(0,1){20}}%
        }%
    }%
    
    \def\rmark#1#2{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr 210mm-38.5mm+#2mm,\dimexpr 25.5mm-#1mm*90-297mm/2+90mm*3/2){%
            \put(0,0){\circle{10}}%
            \put(60,0){\line(-1,0){90}}%
            \put(0,-10){\line(0,1){20}}%
        }%
    }%
    
    \def\tmark#1#2{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+210mm/2-55mm*3/2+#1mm*55+#2mm,\dimexpr 25.5mm-297mm/2+90mm*3/2+9.5mm){%
            \put(0,0){\circle{10}}%
            \put(-10,0){\line(1,0){20}}%
            \put(0,12){\line(0,-1){42}}%
        }%
    }%
    
    \def\bmark#1#2{%
        \fancyput*{\mbox{}}%
        \thisfancyput*(\dimexpr -1in+210mm/2-55mm*3/2+#1mm*55+#2mm,\dimexpr -267.5mm){%
            \put(0,0){\circle{10}}%
            \put(10,0){\line(-1,0){20}}%
            \put(0,-12){\line(0,1){42}}%
        }%
    }%
    
    \def\marks#1{%
        \lmark{0}{#1}\lmark{1}{#1}\lmark{2}{#1}\lmark{3}{#1}%
        \rmark{0}{#1}\rmark{1}{#1}\rmark{2}{#1}\rmark{3}{#1}%
        \bmark{0}{#1}\bmark{1}{#1}\bmark{2}{#1}\bmark{3}{#1}%
        \tmark{0}{#1}\tmark{1}{#1}\tmark{2}{#1}\tmark{3}{#1}%
    }%
    
    \def\paginatarjetas#1#2#3#4%
    {%
        \unatarjeta{#1}{#2}{#3}{0}{0}{#4}%
        \unatarjeta{#1}{#2}{#3}{1}{0}{#4}%
        \unatarjeta{#1}{#2}{#3}{2}{0}{#4}%
        \unatarjeta{#1}{#2}{#3}{0}{1}{#4}%
        \unatarjeta{#1}{#2}{#3}{1}{1}{#4}%
        \unatarjeta{#1}{#2}{#3}{2}{1}{#4}%
        \unatarjeta{#1}{#2}{#3}{0}{2}{#4}%
        \unatarjeta{#1}{#2}{#3}{1}{2}{#4}%
        \unatarjeta{#1}{#2}{#3}{2}{2}{#4}%
    }%
    
	\NewDocumentCommand{\tarjetas}{O{} m O{} m m m O{0}}%
    {%
        \@ifpackageloaded{geometry}{\PassOptionsToPackage{a4paper,tmargin=50mm,bmargin=25mm,%
            lmargin=25mm,rmargin=25mm}{geometry}}{\RequirePackage[a4paper,tmargin=0mm,%
           bmargin=0mm,lmargin=0mm,rmargin=0mm]{geometry}}%
        \begin{document}%
        \pagestyle{empty}%   
        \sloppy%
        \fboxsep=0pt%
        
        \marks{#7}%
        \paginatarjetas{#2}{#4}{#6}{#7}%
        \newpage%
        \ifx&#1&\else\marks{#7}\fi%
        \ifx&#3&\paginatarjetas{#2}{#5}{#6}{#7}\else\paginatarjetas{#3}{#5}{#6}{#7}\fi%
        \end{document}%
    }%
    
	\NewDocumentCommand{\tarjeta}{m O{} m m m}%
    {%
        \@ifpackageloaded{geometry}{\PassOptionsToPackage{papersize={55mm,90mm},tmargin=0mm,bmargin=0mm,%
            lmargin=0mm,rmargin=0mm}{geometry}}{\RequirePackage[papersize={55mm,90mm},tmargin=0mm,%
           bmargin=0mm,lmargin=0mm,rmargin=0mm]{geometry}}%
        \begin{document}%
        \pagestyle{empty}%   
        \sloppy%
        \fboxsep=0pt%
        \tarjetaunica{#1}{#3}{#5}%
        \newpage%
        \ifx&#2&\tarjetaunica{#1}{#4}{#5}\else\tarjetaunica{#2}{#4}{#5}\fi%
        \end{document}%
    }%
    
	\NewDocumentCommand{\tarjetasimple}{m m m}%
    {%
        \@ifpackageloaded{geometry}{\PassOptionsToPackage{papersize={55mm,90mm},tmargin=0mm,bmargin=0mm,%
            lmargin=0mm,rmargin=0mm}{geometry}}{\RequirePackage[papersize={55mm,90mm},tmargin=0mm,%
           bmargin=0mm,lmargin=0mm,rmargin=0mm]{geometry}}%
        \begin{document}%
        \pagestyle{empty}%   
        \sloppy%
        \fboxsep=0pt%
        \tarjetaunica{#1}{#2}{#3}%
        \end{document}%
    }%
\fi%



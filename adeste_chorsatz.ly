\version "2.12.3"

\include "default.ly"

\header {
    title = "Herbei, o ihr Gläub'gen – Adeste Fideles"
    poet = \markup {
    	    \column{"Deutsch: Friedrich Heinrich Ranke"
    	    	    "Latein: John Francis Wade"
    	    	}
    	    }
    composer = "John Francis Wade"
    tagline = ##f
}

upper = 
    \relative c' {
    \slurDown
    \clef treble
    \key a\major
    \time 4/4
    \partial 4 
    <e a>4
    <e a>2 << e4 \\ e4 >> <cis a'>
    <e b'>2 <<e\\ e>> 
    <e cis'>4 <e b'> <e cis'> <fis d'>
    <e cis'>2 <e b'>4 <cis a'>
    
    << a'2 \\ { cis,4 (dis4) } >> <e gis> <dis fis>
    << { gis (a) } \\ { \stemUp e (e) } >> <e b'> <e cis'>
    << { gis2 (fis4.) } \\ { \stemUp e2 (dis4.) } >> << e8 \\ e8 >>
    e1
    <e e'>2 << d'4 \\ {fis,8 [gis8]} >> \stemUp <a cis>4
    << {\stemDown \slurDown fis4 (gis)} \\ \stemUp d'2 >> <a cis>2
    <e b'>4 <e cis'> <fis a> <fis b>
    << {gis4. (fis8)} \\ e2 >> << e4 \\ e4 >>
    a 
    a gis a b 
    a2 e4 <e cis'>
    <e cis'> <e b'> <e cis'> <gis d'>
    <a cis>2 <gis b>4
    <a cis>
    << {\stemDown fis8 [gis]} \\ \stemUp d'4>> 
    <a cis>4 <e b'> <dis a'>
    
    <e gis>2 <<{a4 (d)}\\{\stemUp e,4 (fis)}>>
    
    << { \slurDown e2 (e4.) } \\ { \stemUp \slurUp cis'2 (b4.) } >> <cis, a'>8
    <cis a'>2.
    \bar "|."
    }
    

lower = 
    \relative c {
    \clef bass
    \key a\major
    \time 4/4
    \partial 4
    <a cis'>4
    <a cis'>2 <cis a'>4 <a a'> 
    <e' gis>2 <gis b>
    << a4 \\ a4 >> <gis b> << a \\ a >> <a d,>
    <e a>2 <e gis>4 <fis a>
    <fis a>2 <e b'>4 <b b'>
    << {e (cis)} \\ { \stemUp b (a) } >> <gis gis'> <a fis'>
    << { \slurDown \stemDown b2 (b4.) }\\ { \slurUp b'2 (a4.)} >> <e gis>8
    <e gis>1
    <<cis'2 \\ cis2>> <b d>4 <a e'>
    <b d>2 <a e'>
    <gis e'>4 <<a\\a>> <fis cis'> <d d'>
    << \stemDown e2 \\ {\slurUp \stemUp b'4. (a8)}>> <e gis>4
    r4 
    R1 R1 R1 r2 r4
    <a e'>4
    <b d> <a e'> <gis b> <fis b>
    << b2 \\ { e,4 (d)} >>
    << { \stemDown \slurDown cis4 (d) } \\ \stemUp a'2 >>
    << { \stemDown a2 (gis4.) } \\ { e2 (e4.) }>> <a, a'>8
    <a a'>2.
    \bar "|."
    }

verbalat = \context Lyrics = "verbalat" \lyricmode {
	\set stanza = #"lat: 1."
    A4 -- des2 -- te,4 fi -- del2 -- es,
    Lae4 -- ti4 tri -- um -- phan2 -- tes,4
    Ven4 -- i2 -- te,4 ven -- i2 -- te4 in Beth2.. -- le8 -- hem.1
    Na2 -- tum4 vi -- de2 -- te
    Reg4 -- em ang -- el -- or2 -- um.4
    Ven -- i -- te a -- dor -- e2 -- mus,4
    Ven -- i -- te a -- dor -- e2 -- mus,4
    Ven -- i -- te a -- dor -- e2 -- mus,
    Do2.. -- mi8 -- num.2.
    }

verbadeut = \context Lyrics = "verbadeut" \lyricmode {
	\set stanza = #"dt.: 1."
    Her4 -- bei,2 o4 ihr Gläu2 -- b'gen, 
    fröh4 -- lich4 tri -- um -- phie2 -- rend,4
    o4     kom2 -- met,4   o   kom2 -- met4 nach Beth2.. -- le8 -- hem.1
    Se2 -- het4 das4 Kind2 -- lein,2 
    uns4 zum Heil ge -- bo2 -- ren!4
    O las -- set uns an -- be2 -- ten,4 
    o las -- set uns an -- be2 -- ten,4
    o las -- set uns an -- be2 -- "ten den"
    Kö2 -- nig,4. den Herrn.
    }


\score{ 
    \context ChoirStaff {
        <<
        \new Staff { \upper }
        \new Lyrics {\verbadeut }
        \new Lyrics { \verbalat }
        \new Staff { \lower }
        >>
    }

    \layout{ }
    \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
\markup {
  \fill-line {
    \hspace #0.1 
      \column {\line{\bold "Deutscher Text:"}
      \line {  \bold "2. "
      	      \column {
      	      	      "Du König der Ehren, Herrscher der Heerscharen,"
      	      	      "verschmähst nicht, zu ruhn in Marien Schoß,"
      	      	      "du wahrer Gott von Ewigkeit geboren."
      	      	      \concat{ \bold "Refrain: " "O lasset uns anbeten…"}
        }
      }
      \hspace #0.1 
      \line { \bold "3."
        \column {
      	      	     "Kommt, singet dem Herren, singt ihm, Engelchöre!"
      	      	     "Frohlocket, frohlocket, ihr Seligen:"
      	      	     "Ehre sei Gott im Himmel und auf Erden!"
      	      	     \concat{ \bold "Refrain: " "O lasset uns anbeten…"}
        }
      }
       \hspace #0.1 
      \line { \bold "4."
        \column {
      	      	     "Ja, dir, der du heute Mensch für uns geboren,"
      	      	     "Herr Jesu, sei Ehre und Preis und Ruhm,"
      	      	     "dir, fleischgewordnes Wort des ewgen Vaters!"
      	      	     \concat{ \bold "Refrain: " "O lasset uns anbeten…"}
        }
      }
    }
    \hspace #0.1 
    \column {\line{\bold "Lateinischer Text:"}
      \line {  \bold "2. "
      	      \column {
      	      	      "En grege relicto, humiles ad cunas"
      	      	      "Vocati pastores approperant."
      	      	      "Et nos ovanti gradu festinemus:"
      	      	      \concat{\bold "Refrain: " "Venite adoremus…"}
        }
      }
      \hspace #0.1 
      \line { \bold "3."
        \column {
      	      	     "Aeterni Parentis splendorem aeternum"
      	      	     "Velatum sub carne videbimus."
      	      	     "Deum infantem, pannis involutum,"
      	      	      \concat{\bold "Refrain: " "Venite adoremus…"}
        }
      }
       \hspace #0.1 
      \line { \bold "4."
        \column {
      	      	     "Pro nobis egenum et foeno cubantem"
      	      	     "Piis foveamus amplexibus."
      	      	     "Sic nos amantem quis non redamaret?"
      	      	     \concat{\bold "Refrain: " "Venite adoremus…"}
        }
      }
    }
  \hspace #0.1 
  }
}

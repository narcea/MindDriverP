/* 
Begin writing your custom scripts below.
Press F1 for help 
*/  

/* an example Mind Driver script. */ 
PROGRAM Example Script 1   , /* First declare the programs name */ 
          DESC, A simple example script. , /* immediately give the description */ 
          FADE, 30, 10, 1M, B         , /* Fade both LEDs from 30 to 10 Hz over one minute*/
          LEDS, a                              , /* Alternate the flashes */
          CONT, 30, B                      , /* Continue for 30 seconds */
          LEDS, s                              , /* LEDs flash simultaneously */
          CONT, 15, B
END
/* an example Mind Driver script with SBAGEN support */  
PROGRAM Example Script 2 Binaural
          DESC, A sample binaural script utilizing SBAGEN
          SBAGEN, sample.wav, 60, pink/40 100+1.5/20 200-4/36 400+8/2
          MUSIC, sample.wav, B   , /* Install the generated binaural file */
          CHHZ, 7.83, B                  , /* Both LEDs now flash at 7.83 Hz */
          CONT, 60, B
END 
/*
Quote is from SBAGEN.TXT in the /bin/SBAGEN. folder  
"This incidentally, is an example of a complex brain-state built from
pink noise, to which is added three frequencies (1.5Hz, 4Hz and 8Hz)
each on an independent carrier (100, 200 and 400 Hz), at different
amplitudes (20, 36 and 2).  This combination is supposedly something
like "body-asleep, brain-awake"" 
*/

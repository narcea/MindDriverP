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
          PLAYCD, 3
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
PROGRAM (MED) Fast Theta 
          DESC, Good for meditation and dreaming 
          SBAGEN, mt.wav, 60, 1+110/20 150+7.83/20 200-5/15 200-6/15  
          MUSIC, mt.wav, B  
          FADE, 15, 7.83, 120, b 
          LEDS, a 
          CONT, 2.5m, b 
          LEDS, s 
          CONT, 2.5m, b 
          LEDS, a 
          FADE, 7.83, 5, 2m, b 
          LEDS, s 
          CONT, 2m, b 
          LEDS, a 
          CONT, 2m, b 
          LEDS, s 
          CONT, 2m, b 
          LEDS, a 
          FADE, 5, 6, 1m, b 
          CONT, 30, b 
END 
PROGRAM (BIN-test) test 
          DESC, Slow relaxation 
          SBAGEN, sa.wav, 60, 1+100/20 180+11.15/20 200-9.83/15 300+8/20 
          
          MUSIC, sa.wav, B  
           LEDS, o

          FADE, 14.17, 13.34, 5, B 
         
          FADE, 13.34, 12.81, 60, B 
          LEDS, L 
          FADE, 12.81, 11.15, 120, B 
          CONT, 60, B 
          LEDS, O 
          FADE, 11.15, 10, 60, B 
END 

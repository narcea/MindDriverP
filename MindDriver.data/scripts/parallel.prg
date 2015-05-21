/* 
Parallel Port test scripts
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
PROGRAM para test 1
          DESC, Test the leds on the new eyephones
          LEDON, 1
          CONT, 1,a
          LEDON, 2
          CONT, 1,a
          LEDON, 3
          CONT, 1,a
          LEDON, 4
          CONT, 1,a
          LEDON, 5
          CONT, 1,a
          LEDON, 6
          CONT, 1,a
         
          LEDOFF, 1
          CONT, 1,a
          LEDOFF,2
          CONT, 1,a
          LEDOFF,3
          CONT, 1,a
          LEDOFF,4
          CONT, 1,a
          LEDOFF,5
          CONT, 1,a
          LEDOFF, 6
          CONT, 1,a

          LEDON, a
          CONT, 1,a
          LEDOFF, a
          CONT, 1,a
END
PROGRAM para test 2
DESC, test ~program  2

          LEDON, 1
          LEDON, 4
          CONT, 1,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, 1,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, 1,a
          LEDOFF, 5     
          LEDOFF, 6 
REPEAT, 2          
          LEDON, 1
          LEDON, 4
          CONT, .5,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, .5,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, .5,a
          LEDOFF, 5     
          LEDOFF, 6 
END REPEAT
REPEAT, 4 
          LEDON, 1
          LEDON, 4
          CONT, .25,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, .25,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, .25,a
          LEDOFF, 5     
          LEDOFF, 6 
END REPEAT,
REPEAT, 8  
          LEDON, 1
          LEDON, 4
          CONT, .125,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, .125,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, .125,a
          LEDOFF, 5     
          LEDOFF, 6 
END REPEAT,
REPEAT, 16           
          LEDON, 1
          LEDON, 4
          CONT, .0625,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, .0625,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, .0625,a
          LEDOFF, 5     
          LEDOFF, 6 
END REPEAT,
REPEAT, 32
          LEDON, 1
          LEDON, 4
          CONT, .015625,a
          LEDOFF, 1
          LEDOFF, 4
          LEDON, 2
          LEDON, 3
          CONT, .015625,a
          LEDOFF, 2
          LEDOFF, 3      
          LEDON, 5
          LEDON, 6
          CONT, .015625,a
          LEDOFF, 5     
          LEDOFF, 6 

          
         
END REPEAT,  
END
PROGRAM para test 3
DESC, third test .program
REPEAT, 3
          LEDON, a
          CONT, 1,a
          LEDS, dim
          CONT, 1,a
          LEDS, bright
          CONT, 1,a
END REPEAT
END 

PROGRAM para test4 
DESC, (left leds.Tops Leds.Right Leds)
          LEDS, lside
          CHHZ, 5,lside
          CONT, 2,a
          CHHZ, 5,rside
          LEDS, rside
          CONT, 2,a
          CHHZ, 5,tops
          LEDS, top
          CONT, 2,a
END 
PROGRAM para test5
DESC, test modified CHHZ 1,2,3,4,5                                        
          CHHZ, 30,LED1
          CHHZ, 10,LED2
          CHHZ, 2,LED5
          CONT, 4,a
          
          CHHZ, 35, LED3
          CHHZ, 15,LED4
          CHHZ, 7,LED6
          CONT, 4,a
END 
PROGRAM para test6
DESC, tests the new ramp command
          SLOPE,15         
                    01,30        
                    30,01          
                    01,30         
                    30,01         
                    01,30        
                    30,01   
          SLOPE,15         
                    30,01          
                    01,30         
                    30,01         
                    01,30        
                    30,01   
                    01,30
          CONT, 4,a
END       

/* These scripts below were generated with a graphic editor
this editor is being developed. 
*/
              
PROGRAM <no name>
     DESC, Unnamed session.

     MSLOPE, {
          L1
             37, 288
             45, 259
             32, 111
             40, 351
             36, 120
             23, 133
             39, 267
          L2
             25, 186
             47, 63
             26, 209
             35, 302
             19, 480
             43, 284
             43, 165
          L4
             29, 102
             41, 125
             20, 444
             29, 338
             36, 387
             23, 297
}
END
PROGRAM <no name2>
     DESC, Unnamed session.

     MSLOPE, {
          L1
             58, 1
             4, 59
          L2
             3, 2
             56, 57
          L3
             31, 1
             30, 59
          L4
             31, 1
             29, 59
          L5
             58, 1
             20, 9
             59, 20
             11, 20
             50, 10
          L6
             10, 2
             9, 55
}
END 
PROGRAM <no name3>
     DESC, Unnamed session.

     MSLOPE, {
          L1
             10, 10
             30, 49
          L2
             50, 10
             1, 49     
}
END 
PROGRAM <no name4>
     DESC, Unnamed session.

     MSLOPE, {
          L1
             46, 1
             17, 17
             46, 13
             25, 12
             45, 10
             32, 5
          L2
             18, 4
             38, 5
             4, 9
             32, 11
             24, 22
             48, 5
             12, 3
          L3
             9, 2
             32, 10
             10, 11
             16, 15
             16, 13
             24, 4
             26, 2
          L4
             38, 0
             20, 23
             20, 18
             11, 8
             12, 7
          L6
             14, 1
             24, 40
             27, 18
          A1
             19, 5
             32, 6
             22, 7
             28, 11
             37, 14
             17, 10
             32, 6
          A2
             22, 9
             48, 15
             27, 8
             45, 16
             24, 8
             12, 2
}
END 


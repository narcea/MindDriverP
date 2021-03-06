/*
Welcome to the editor. Below you will find the default 
scripts for the Mind Driver. 

Press the F1 key for help, press F5 to refresh. 
Press F3 to search.  
*/ 

PROGRAM (REL) Fast Alpha Relaxer
          DESC, Quick Relaxation
          LEDS, S
          FADE, 30, 11, 20, B
          CONT, 40, B
          FADE, 11, 6, 30, B
          FADE, 6, 17.5, 30, B
          FADE, 17.5, 11, 30, B
          CONT, 120, B
          FADE, 11, 13, 30, B
          FADE, 13, 7.83, 30, B
          FADE, 7.83, 11, 30, B
          CONT, 210, B
          FADE, 11, 15, 30, B
          CONT, 40, B
END

PROGRAM (REL) Slow Alpha Ramp
          DESC, Slow relaxation
          LEDS, S
          FADE, 15, 14.17, 60, B
          FADE, 14.17, 13.34, 60, B
          LEDS, O
          FADE, 13.34, 12.81, 60, B
          LEDS, L
          FADE, 12.81, 11.15, 120, B
          CONT, 60, B
          LEDS, O
          FADE, 11.15, 10, 60, B
          LEDS, L
          CONT, 15, B
          CHHZ, 9.83, B
          CONT, 45, B
          FADE, 9.83, 8, 60, B
          LEDS, 0
          CONT, 30, B
          LEDS, L
          CONT, 30, B
          CONT, 30, B
          CONT, 30, B        
          FADE, 8, 15, 30, B
          CONT, 15, B
END

PROGRAM (REL) Super 11
          DESC, Deep relaxation
          FADE, 18, 12, 30, B
          FADE, 12, 11, 30, B
          CONT, 180, B
          CHHZ, 7.83, B
          LEDS, A
          FADE, 7.83, 11, 60, B
          LEDS, O
          CONT, 260, B
          FADE, 11, 15, 30, B
          CONT, 30, B
END

PROGRAM (REL) Intense Alpha
          DESC, Slow deep relaxation.
          LEDS, S
          FADE, 19, 15, 120, B
          CONT, 120, B
          FADE, 15, 11, 120, B
          CONT, 120, B
          FADE, 11, 7.83, 240, B
          CONT, 420, B
          FADE, 7.83, 11, 60, B
          CONT, 40, B
END


PROGRAM (REL) Profound Resonance           
          DESC, Relaxation and mood change.
          LEDS, S
          FADE, 25, 25, 30, B
          FADE, 20, 20, 30, B
          FADE, 15, 15, 30, B
          FADE, 10, 10, 60, B
          FADE, 7.83, 7.83, 1500, B
          FADE, 10, 10, 60, B
          FADE, 15, 15, 30, B
          FADE, 20, 20, 30, B
          FADE, 25, 25, 60, B
END

PROGRAM (REL) Alpha High Stress
          DESC, For high stress
          LEDS, A	
          FADE, 25, 15, 300, B
          LEDS, S
          FADE, 15, 11, 120, B
          FADE, 11, 7.83, 60, B
          CONT, 300, B
          FADE, 7.83, 5, 60, B
          CONT, 540, B
          FADE, 5, 15, 120, B
          CONT, 40, B
END

PROGRAM (REL) Alpha low stress
          DESC, For low stress
          LEDS, S
          FADE, 15, 10, 300, B
          CONT, 600, B
          FADE, 10, 7, 300, B
          CONT, 360, B
          FADE, 7, 20, 240, B
          CONT, 40, B
END

PROGRAM (MED) Fast Fix
          DESC, High Alpha
          LEDS, S
          FADE, 11, 11, 60, B
          FADE, 18, 18, 20, B
          FADE, 5, 5, 20, B
          FADE, 11, 11, 110, B
          FADE, 15, 15, 15, B
          FADE, 9, 9, 15, B
          FADE, 11, 11, 90, B
          FADE, 7, 7, 180, B
          FADE, 7, 15, 90, B
          CONT, 40, B
END

PROGRAM (ENR) Morning Chill
          DESC, Quick energized wake up.
          LEDS, A
          FADE, 25, 7.83, 30, B
          CONT, 30, B
          LEDS, S
          FADE, 7.83, 15, 30, B
          CONT, 30, B
END

PROGRAM (MED) Meditation Therapy
          DESC, Deep theta meditation
          FADE, 20, 1, 30, B
          LEDS, O
          FADE, 1, 15, 30, B
          LEDS, A
          FADE, 15, 1, 30, B
          LEDS, O
          FADE, 1, 10, 30, B
          LEDS, A
          FADE, 10, 1, 60, B
          LEDS, 0
          FADE, 1, 7.83, 80, B
          LEDS, S
          CHHZ, 7, B
          CONT, 270, B
          CHHZ, 5, B
          LEDS, O
          CONT, 600, B
          CHHZ, 3, B
          LEDS, S
          CONT, 540, B
          FADE, 3, 20, 180, B
          CONT, 30, B
END

PROGRAM (MED) Fast Theta
          DESC, Good for meditation and dreaming
          FADE, 15, 7.83, 120, B
          LEDS, A
          CONT,3, B
          LEDS, S
          CONT, 3, B
          LEDS, A
          FADE, 7.83, 5, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, A
          CONT, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, A
          FADE, 5, 6, 60, B
          CONT, 30, B
END

PROGRAM (LRN) Learning Acceleration
          DESC, Accelerated absorption of information
          FADE, 25, 5, 30, B
          FADE, 5, 25, 30, B
          FADE, 25, 5, 30, B
          FADE, 5, 25, 30, B
          FADE, 25, 10, 30, B
          CONT, 120, B
          FADE, 10, 6, 30, B
          LEDS, A
          CONT, 240, B
          LEDS, S
          CHHZ, 10, B
          CONT, 300, B
          FADE, 10, 14, 60, B
END

PROGRAM (ENR) High Awakening
          DESC, Relaxation-Energy
          FADE, 26, 6, 30, B
          FADE, 6, 20, 30, B
          LEDS, A
          FADE, 20, 17.5, 60, B
          LEDS, O
          FADE, 17.5, 15, 60, B
          CHHZ, 11, B
          CONT, 30, B
          CHHZ, 15, B
          LEDS, A
          FADE, 15, 11, 90, B
          LEDS, O
          CONT, 60, B
          LEDS, A
          CHHZ, 8.915, B
          CONT, 30, B
          CHHZ, 11, B
          LEDS, O
          FADE, 11, 10, 80, B
          LEDS, S
          FADE, 10, 8.915, 120, B
          CONT, 180, B
          LEDS, A
          CONT, 120, B
          CHHZ, 11, B
          CONT, 30, B
          CHHZ, 7, B
          CONT, 30, B
          CHHZ, 8.915, B
          CONT, 120, B
          FADE, 8.915, 12.5, 120, B
          CONT, 30, B
END
PROGRAM (LRN) Alpha-Theta Oscillation
          DESC, Good for creativity and learning.
          REPEAT, 3
          {
                    CHHZ, 17.5,B
                    FADE, 17.5, 5, 300, B
                    FADE, 5, 17.5, 300, B		
          }, END REPEAT
END
PROGRAM (MED) Mental Rubdown
          DESC, Mental message and tune-up.
          FADE, 7.83, 10, 60, B
          LEDS, A
          FADE, 10, 15, 60, B
          LEDS, S
          FADE, 15, 20, 60, B
          LEDS, A
          FADE, 20, 25, 60, B
          LEDS, S
          FADE, 25, 30, 60, B
          LEDS, A
          FADE, 30, 35, 60, B
          FADE, 35, 27.5, 120, B
          LEDS, O
          FADE, 27.5, 22.5, 120, B
          LEDS, S
          FADE, 22.5, 16, 180, B
          LEDS, O
          FADE, 16, 10, 180, B
          LEDS, S
          FADE, 10, 8.915, 300, B
          LEDS, A
          FADE, 8.915, 7.83, 300, B
          CONT, 180, B
          FADE, 7.83, 20, 120, B
          CONT, 30, B
END
PROGRAM (LRN) Mental Awareness
          DESC, Great attention enhancement tool.
          CHHZ, 14, B
          CONT, 30M, B
END
PROGRAM (ENR) Creig's Glory
          DESC, Twenty minute mental wake up.
          REPEAT, 10
          {
                    CHHZ, 10, B
                    CONT, 60, B
                    CHHZ, 17.5, B
                    CONT, 60, B
          }, END REPEAT
END
PROGRAM (SLP) Lucid Delight
          DESC, Sets the stage for vivid lucid dreaming.
          FADE, 20, 4, 8M, B
          LEDS, O
          FADE, 4, 2, 180, B
          LEDS, A
          FADE, 2, 4, 300, B
          FADE, 4, 2, 240, B
          LEDS, O
          FADE, 2, 4, 10M, B
          LEDS, A
          FADE, 4, 2, 8M, B
          FADE, 2, 20, 120, B
END
PROGRAM (ENR) The Equator
          DESC, High energy for  high creativity.
          FADE, 40, 01, 60, B
          FADE, 1, 30, 60, B
          FADE, 30, 3, 60, B
          FADE, 3, 27.5, 60, B
          FADE, 27.5, 5, 60, B
          FADE, 05, 25, 60, B
          FADE, 25, 7.83, 60, B
          FADE, 7.83, 22.5, 60, B
          FADE, 22.5, 11, 60, B
          FADE, 11, 19, 60, B
          FADE, 19, 14, 60, B
          LEDS, A
          CONT, 60, B
          FADE, 14, 17.5, 60, B
          FADE, 17.5, 10, 60, B
          FADE, 10, 21, 60, B
          FADE, 21, 7, 60, B
          FADE, 7, 24, 60, B
          FADE, 24, 4, 60, B
          FADE, 4, 26, 60, B
          FADE, 26, 2, 60, B
          FADE, 2, 29, 60, B
          FADE, 29, 1.5, 60, B
          FADE, 1.5, 40, 60, B
          CONT, 30, B
END
PROGRAM (LRN) Basic Tune-Up
          DESC, Exercise for concentration and creativity.
          FADE, 15, 5, 30, B
          FADE, 5, 15, 30, B
          FADE, 15, 5, 30, B
          FADE, 5, 15, 30, B
          FADE, 15, 11, 30, B
          CONT, 210, B
          CHHZ, 12.5, B
          FADE, 12.5, 5, 60, B
          CONT, 60, B
          CHHZ, 7.83, B
          CONT, 270, B
          FADE, 7.83, 5, 30, B
          CONT, 240, B
          CHHZ, 11, B
          CONT, 120, B
          FADE, 11, 12.5, 60, B
END
PROGRAM (REL) Deep Relaxed Creativity
          DESC, Deep relaxation and creativity.
          FADE, 17.5, 10, 120, B
          LEDS, O
          CONT, 8M, B
          LEDS, S
          CHHZ, 7.83, B
          CONT, 240, B
          CHHZ, 6, B
          CONT, 240, B
          LEDS, A
          CONT, 240, B
          CHHZ, 5, B
          CONT, 300, B
          CHHZ, 1, B
          CONT, 360, B
          FADE, 1, 5, 120, B
          CONT, 60, B
          CHHZ, 4, B
          CONT, 240, B
          LEDS, O
          CONT, 120, B
          CHHZ, 7.83, B
          CONT, 10M, B
          CHHZ, 10, B
          FADE, 10, 17.5, 60, B
          FADE, 17.5, 10, 60, B
          CONT, 120, B
          FADE, 10, 5, 60, B
          FADE, 5, 12.5, 180, B
END
PROGRAM (MED) Journey into the mind
          DESC, Energizing with good visual effects.
          FADE, 30, 11, 30, B
          FADE, 11, 25, 30, B
          FADE, 25, 11, 30, B
          FADE, 11, 19, 30, B
          LEDS, A
          CONT, 120, B
          FADE, 19, 10, 60, B
          CONT, 180, B
          CHHZ, 30, B
          LEDS, S
          FADE, 30, 10, 60, B
          CONT, 180, B
          CHHZ, 30, B
          FADE, 30, 10, 60, B
          CONT, 120, B
          FADE, 10, 7.83, 120, B
          CONT, 120, B
          FADE, 7.83, 6, 60, B
END
PROGRAM (MED) Mental Gym
          DESC, A great general mental workout.
          FADE, 25, 7, 30, B
          FADE, 7, 25, 30, B
          FADE, 25, 7, 30, B
          FADE, 7, 23.5, 30, B
          FADE, 23.5, 7, 30, B
          LEDS, A
          FADE, 7, 20, 30, B
          LEDS, S
          FADE, 20, 7, 30, B
          FADE, 7, 20, 60, B
          FADE, 20, 7, 60, B
          FADE, 7, 20, 60, B
          FADE, 20, 18, 30, B
          LEDS, A
          CONT, 60, B
          FADE, 18, 11, 30, B
          LEDS, S
          CONT, 60, B
          CHHZ, 1, B
          FADE, 1, 11, 30, B
          CONT, 60, B
          FADE, 11, 15, 30, B
          CONT, 30, B
END
PROGRAM (MED) Mental Gym II
          DESC, More intense general mental workout.
          FADE, 30, 05, 20, B
          FADE, 05, 25, 20, B
          FADE, 25, 7, 20, B
          FADE, 7, 22.5, 30, B
          FADE, 22.5, 11, 30, B
          LEDS, O
          CONT, 120, B
          CHHZ, 7.83, B
          CONT, 120, B
          LEDS, A
          CHHZ, 6, B
          CONT, 120, B
          CHHZ, 11, B
          CONT, 60, B
          CHHZ, 25, B           
          FADE, 25, 18, 60, B
          LEDS, O
          CONT, 60, B
          CHHZ, 11, B
          CONT, 120, B
          CHHZ, 18, B
          CONT, 60, B
          CHHZ, 11, B
          CONT, 120, B
          CHHZ, 6, B
          CONT, 60, B
          LEDS, A
          CONT, 60, B
          LEDS, O
          CHHZ, 25, B
          FADE, 25, 11, 120, B
          CHHZ, 2, B
          FADE, 2, 25, 60, B
          FADE, 25, 11, 60, B
          CONT, 120, B
          FADE, 11, 15, 60, B
END
PROGRAM (LRN) Mind Swell
          DESC, A great exercise for expanding the mind.
          FADE, 10, 30, 120, B
          FADE, 30, 12, 60, B
          FADE, 12, 10, 60, B
          LEDS, A
          FADE, 10, 03, 60, B
          FADE, 03, 30, 180, B
          FADE, 30, 3, 120, B
          FADE, 3, 7.83, 60, B
          LEDS, O
          CONT, 240, B
          FADE, 7.83, 6, 60, B
          LEDS, A
          CONT, 240, B
          LEDS, S
          FADE, 6, 03, 120, B
          CONT, 300, B
          FADE, 03, 01, 60, B
          CONT, 120, B
          FADE, 01, 6, 300, B
          FADE, 6, 1, 180, B
          CONT, 240, B
          CHHZ, 5, B
          CONT, 60, B
          LEDS, O
          CONT, 300, B
          FADE, 6, 10, 120, B
END
PROGRAM (SLP) Dreams for the Sleepless
          DESC, A wonderful program for when you are having trouble falling asleep.
          LEDS, O
          FADE, 20, 1, 20, B
          LEDS, S
          FADE, 1, 15, 20, B
          LEDS, O
          FADE, 15, 1, 20, B
          LEDS, S
          FADE, 1, 10, 20, B
          LEDS, O
          FADE, 10, 1, 20, B
          LEDS, S
          FADE, 1, 7.83, 20, B
          LEDS, A
          FADE, 7.83, 6, 60, B
          LEDS, O
          CONT, 120, B
          LEDS, S
          CHHZ, 5.5, B
          CONT, 120, B
          LEDS, O
          CHHZ, 5, B
          CONT, 300, B
          CHHZ, 4, B
          LEDS, S
          CONT, 300, B
          LEDS, O
          CHHZ, 3, B
          CONT, 300, B
          LEDS, O
          CHHZ, 2, B
          CONT, 300, B
          LEDS, S
          CONT, 60, B
          LEDS, O
          FADE, 2, 25, 120, B
END
PROGRAM (SLP) Sleep Temptation
          DESC, This brings you close to sleep.
          FADE, 15, 11, 120, B
          LEDS, A
          CONT, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, A
          FADE, 11, 7, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, A
          FADE, 7, 5, 180, B
          LEDS, S
          CONT, 120, B
          LEDS, O
          CONT, 120, B
          LEDS, A
          CONT, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, O
          FADE, 5, 3, 120, B
          LEDS, S
          CONT, 120, B
          LEDS, O
          CONT, 120, B
          LEDS, S
          CONT, 60, B
          LEDS, O
          FADE, 3, 6, 120, B
END
PROGRAM (LRN) Relaxed Learning
          DESC, Comfortable relaxed meditative learning.
          CHHZ, 10, B
          CONT, 60, B
          LEDS, A
          CHHZ, 15, B
          FADE, 15, 10, 60, B
          LEDS, O
          FADE, 10, 09, 60, B
          LEDS, A
          FADE, 9, 7.83, 120, B
          LEDS, S
          CONT, 180, B
          LEDS, O
          CONT, 180, B
          LEDS, A
          FADE, 7.83, 5, 120, B
          LEDS, S
          CONT, 180, B
          LEDS, A
          CONT, 180, B
          LEDS, S
          CONT, 180, B
          LEDS, O
          FADE, 5, 3, 120, B
          LEDS, A
          CONT, 180, B
          LEDS, S
          CONT, 180, B
END
PROGRAM (MED) Rumbling Theta
          DESC, A trip through the low theta freq.
          FADE, 17.5, 11, 60, B
          CHHZ, 17.5, B
          FADE, 17.5, 11, 120, B
          LEDS, A
          CONT, 120, B
          LEDS, O
          FADE, 11, 7.83, 30, B
          LEDS, A
          CONT, 90, B
          LEDS, O
          CONT, 180, B
          CHHZ, 5, B
          LEDS, A           
          FADE, 5, 7.83, 60, B
          LEDS, O
          FADE, 7.83, 4, 120, B
          CONT, 180, B
          CHHZ, 7.83, B
          LEDS, O
          FADE, 7.83, 3, 60, B
          LEDS, O
          FADE, 3, 4, 60, B
          LEDS, A
          CONT, 60, B
          FADE, 4, 7.83, 60, B
END
PROGRAM (REL) Unwind
          DESC, Nice after a long day
          LEDS, O
          FADE, 12,12,120,B
          FADE, 12,7,60,B
          LEDS, S
          CONT, 60,B
          FADE, 7,3,60,B
          CONT, 240,B
          FADE, 3,4,60,B
          LEDS, O
          CONT, 540, B
          FADE, 4,7.83,60,B
          LEDS, S
          CONT, 240,B
          FADE, 7.83,12,60,B
          LEDS, O
          CONT, 300,B
END 

PROGRAM (ENR) Wake up and learn
          DESC, Energizes and helps with learning
          LEDS, O
          FADE, 12,12,60,B
          FADE, 12,7.83,60,B
          CONT, 120,B
          FADE, 7.83,1,60,B
          FADE, 1,5,60,B
          LEDS, S
          CONT, 180,B
          FADE, 5,7,60,B
          LEDS, O
          CONT, 540,B
          FADE, 7,10,60,B
          LEDS, S
          CONT, 240,B
          FADE, 10,12,60,B
          LEDS, O
          CONT, 300,B
END 
PROGRAM (MED) Meditating Mind
          DESC, Good for centering
          LEDS, S
          FADE, 24,24,30,B
          FADE, 24,11,90,B
          LEDS, O
          CONT, 60,B
          LEDS, S
          FADE, 11,9,120,B
          LEDS, O
          CONT, 60,B
          LEDS, S
          FADE, 9,7,120,B
          LEDS, O
          CONT, 60,B
          LEDS, S
          FADE, 7,5,120,B
          LEDS, O
          CONT, 180,B
          LEDS, S
          FADE, 5,3,120,B
          LEDS, O
          CONT, 180,B
          LEDS, S
          FADE, 3,1,120,B
          CONT, 180,B
          FADE, 1,15,300,B
          CONT, 120,B
END 

PROGRAM (SLP) Happy Dream
          DESC, Good Dreams
          LEDS, S
          FADE, 26, 26, 30, B
          FADE, 26, 12, 90, B
          LEDS, O
          CONT, 60, B
          LEDS, S
          FADE, 12, 10, 120, B
          LEDS, O
          CONT, 60, B
          LEDS, S
          FADE, 10, 6, 240, B
          LEDS, O
          CONT, 240, B
          LEDS, S
          FADE, 6, 4, 120, B
          LEDS, O
          CONT, 180, B
          LEDS, S
          FADE, 4, 2, 120, B
          LEDS, O
          CONT, 180, B
          FADE, 2, 1, 60, B
          CONT, 300, B
END

PROGRAM (REL) Relaxed and Thinking
          DESC, The name says it all
          LEDS, S
          FADE, 12, 12, 120, B
          FADE, 12, 8, 60, B
          CONT, 180, B
          LEDS, O
          CONT, 60, B
          LEDS, S
          FADE, 8, 5, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 5, 3, 60, B
          CONT, 240, B
          FADE, 3, 1, 60, B
          CONT, 240, B
          FADE, 1, 3, 60, B
          CONT, 240, B
          FADE, 3, 5, 60, B
          CONT, 300, B
END

PROGRAM (REL) Take a break
          DESC, Take a break and catch your breath
          LEDS, S
          CHHZ, 12, B
          CONT, 180, B
          FADE, 12, 7.83, 60, B
          CONT, 60, B
          LEDS, O
          FADE, 7.83, 5, 60, B
          CONT, 120, B
          LEDS, S
          FADE, 5, 7.83, 60, B
          CONT, 60, B
          LEDS, O
          FADE, 7.83, 10, 60, B
          CONT, 60, B
          FADE, 10, 12, 60, B
          CONT, 180, B
END

PROGRAM (ENR) Increased Energy 1
          DESC, Increases energy
          LEDS, S
          FADE, 10, 10, 30, B
          FADE, 10, 18, 90, B
          LEDS, O
          FADE, 18, 30, 120, B
          LEDS, S
          FADE, 30, 40, 60, B
          CONT, 60, B
          FADE, 40, 38, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 38, 36, 60, B
          LEDS, S
          CONT, 60, B
          FADE, 36, 34, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 34, 32, 60, B
          LEDS, S
          CONT, 60, B
          FADE, 32, 30, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 30, 32, 60, B
          LEDS, S
          CONT, 60, B
          FADE, 32, 34, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 34, 36, 60, B
          LEDS, S
          CONT, 60, B
          FADE, 36, 38, 60, B
          LEDS, 0
          CONT, 60, B
          FADE, 38, 40, 60, B
          LEDS, S
          CONT, 60, B
          LEDS, O
          FADE, 40, 32, 180, B
          LEDS, S
          CONT, 120, B
END

PROGRAM (ENR) Increased Energy 2
          DESC, Increases energy
          LEDS, S
          FADE, 16, 7, 300, B
          LEDS, O
          FADE, 7, 10, 600, B
          FADE, 10, 5, 300, B
          FADE, 5, 15, 300, B
          FADE, 15, 10, 300, B
          FADE, 10, 15, 300, B
          LEDS, S
          FADE, 15, 20, 120, B
          CONT, 60, B
END

PROGRAM (LRN) Learning Acceleration2
          DESC, Accelerated absorption
          LEDS, S
          FADE, 12, 12, 120, B
          FADE, 12, 10, 60, B
          LEDS, O
          CONT, 60, B
          FADE, 10, 7, 60, B
          LEDS, S
          CONT, 60, B
          FADE, 7, 4, 60, B
          LEDS, O
          CONT, 120, B
          FADE, 4, 7, 60, B
          CONT, 240, B
          FADE, 7, 10, 60, B
          LEDS, S
          CONT, 300, B
END




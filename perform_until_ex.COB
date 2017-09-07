      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-01-23
      * Purpose:  Give examples of PERFORM UNTIL statements.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL-EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

      * Declare and initialize variables that will control loops.
       01 NUM-1        PIC 9(2) VALUE 0.
       01 NUM-2        PIC 9(2) VALUE 4.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * Inline Version
      * The condition after the UNTIL involves the loop variable.
            PERFORM UNTIL NUM-1 > 4
               DISPLAY "Flash"
      * Inside the loop, alter the loop variable so that the
      * loop condition will eventually become true.
               ADD 1 TO NUM-1
               DISPLAY "The value of NUM-1 is now:  ", NUM-1
            END-PERFORM

            DISPLAY " "

      * Procedural Version
      * The condition after the UNTIL involves the loop variable.
            PERFORM 100-PARAGRAPH-1 UNTIL NUM-2 < 1

            DISPLAY "Ending now."
            STOP RUN.

       100-PARAGRAPH-1.
            DISPLAY "Thunder".
      * Inside the loop, alter the loop variable so that the
      * loop condition will eventually become true.
            SUBTRACT 1 FROM NUM-2
            DISPLAY "The value of NUM-2 is now:  ", NUM-2.

       END PROGRAM PERFORM-UNTIL-EXAMPLES.

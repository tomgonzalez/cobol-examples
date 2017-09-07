      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-08-15
      * Purpose: Give examples of PERFORM TIMES statements.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-TIMES-EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM      PIC 9(2) VALUE 3.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * Procedural Version
           PERFORM 100-DISPLAY-SOME-TEXT 5 TIMES

      * Inline Version
           PERFORM NUM TIMES
               DISPLAY "Here is a different line of text."
           END-PERFORM

           DISPLAY "Ending the program."

           STOP RUN.

      * Inline CONVERSION

       100-DISPLAY-SOME-TEXT.
           DISPLAY "Hey, here is some text.".

       END PROGRAM PERFORM-TIMES-EXAMPLES.

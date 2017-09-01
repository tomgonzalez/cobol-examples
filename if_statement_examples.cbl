      ******************************************************************
      * Author:  Tom Gonzalez
      * Date: 09/18/2015
      * Purpose: Simple IF Statement Example
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-IF-EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM       PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Enter a number."
            ACCEPT NUM

            IF NUM > 5
                DISPLAY "The number is greater than 5."
            END-IF

            IF NUM < 3
                DISPLAY "The number is less than 3."
            END-IF

            IF NUM = 8
               DISPLAY "The number is equal to 8."
            END-IF

            DISPLAY "The program is ending now."

            STOP RUN.
       END PROGRAM SIMPLE-IF-EXAMPLES.

      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2011-04-17
      * Purpose: Example of an IF-ELSE statement.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLE-OF-THREE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM          PIC 9(3).
       01 QUOTIENT     PIC 9(3).
       01 REM          PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Enter a number."
            ACCEPT NUM

            DIVIDE NUM BY 3 GIVING QUOTIENT REMAINDER REM

            IF REM = 0
                DISPLAY NUM, " is a multiple of 3."
            ELSE
                DISPLAY NUM, " is not a multiple of 3."
            END-IF

            STOP RUN.

       END PROGRAM MULTIPLE-OF-THREE.

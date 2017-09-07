      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-02-24
      * Purpose: Give examples of perform varying statements.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-VARY-EX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Variables can be initialized in PERFORM statement.
       01 NUM-1        PIC 9(2).
       01 NUM-2        PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Starting the program."

      * Inline version.
            PERFORM VARYING NUM-1 FROM 0 BY 2 UNTIL NUM-1 > 10
      * No need for loop body to alter loop variable.
               DISPLAY "Value of NUM-1 is now:  ", NUM-1
            END-PERFORM

            DISPLAY " "

      * Procedural Version
            PERFORM 100-PRINT-VAL VARYING NUM-2 FROM 35 BY -3
               UNTIL NUM-2 < 25

            DISPLAY "Ending now."
            STOP RUN.

       100-PRINT-VAL.
      * No need for procedure to alter loop variable.
            DISPLAY "Value of NUM-2 is now:  ", NUM-2.

       END PROGRAM PERFORM-VARY-EX.

      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  08/07/2014
      * Purpose:  Give examples of the COMPUTE statement.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE-EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1         PIC 9(5)V9(5) VALUE 7.
       01 NUM2         PIC 9(5)V9(5) VALUE 5.
       01 NUM3         PIC 9(5)V9(5) VALUE 6.
       01 NUM4         PIC 9(5)V9(5) VALUE 2.
       01 NUM5         PIC 9(5)V9(5).
       01 NUM6         PIC 9(5)V9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Example 1"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            COMPUTE NUM5 = 2 * NUM1 + NUM2
            DISPLAY "COMPUTE NUM5 = 2 * NUM1 + NUM2"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            MOVE 7 TO NUM1
            MOVE 5 TO NUM2
            MOVE 6 TO NUM3
            MOVE 2 TO NUM4
            MOVE 9 TO NUM5

            DISPLAY "Example 2"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY "COMPUTE NUM5 = 2 * NUM1 - 4 * NUM3 * NUM2"
            DISPLAY "COMPUTE NUM5 = 2 * NUM1 - 4 * NUM3 * NUM2"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            MOVE 7 TO NUM1
            MOVE 5 TO NUM2
            MOVE 6 TO NUM3
            MOVE 2 TO NUM4
            MOVE 9 TO NUM5

            DISPLAY "Example 3"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            COMPUTE NUM5 = NUM3**2 + NUM4**2
            DISPLAY "COMPUTE NUM5 = NUM3**2 + NUM4**2"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            MOVE 7 TO NUM1
            MOVE 5 TO NUM2
            MOVE 6 TO NUM3
            MOVE 2 TO NUM4
            MOVE 9 TO NUM5

            DISPLAY "Example 4"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            COMPUTE NUM5 = NUM1 + NUM2 * NUM3
            DISPLAY "COMPUTE NUM5 = NUM1 + NUM2 * NUM3"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            MOVE 7 TO NUM1
            MOVE 5 TO NUM2
            MOVE 6 TO NUM3
            MOVE 2 TO NUM4
            MOVE 9 TO NUM5

            DISPLAY "Example 5"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            COMPUTE NUM5 = ( NUM1 + NUM2 ) * NUM3
            DISPLAY "COMPUTE NUM5 = ( NUM1 + NUM2 ) * NUM3"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            MOVE 8 TO NUM1
            MOVE 5 TO NUM2
            MOVE 6 TO NUM3
            MOVE 2 TO NUM4
            MOVE 9 TO NUM5

            DISPLAY "Example 6"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5, " NUM6: ", NUM6
            COMPUTE NUM5 = NUM1 / 3
            DISPLAY "COMPUTE NUM5 = NUM1 / 3"
            COMPUTE NUM6 ROUNDED = NUM1 / 3
            DISPLAY "COMPUTE NUM6 ROUNDED = NUM1 / 3"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5, " NUM6: ", NUM6
            DISPLAY " "

            STOP RUN.
       END PROGRAM COMPUTE-EXAMPLES.

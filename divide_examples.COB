      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  08/07/2014
      * Purpose:  Give examples of the DIVIDE statement.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE-EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1         PIC 9(5)V9(5) VALUE 7.
       01 NUM2         PIC 9(5)V9(5) VALUE 5.
       01 NUM3         PIC 9(5)V9(5) VALUE 6.
       01 NUM4         PIC 9(5)V9(5) VALUE 2.
       01 NUM5         PIC 9(5)V9(5) VALUE 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Example 1"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DIVIDE 8 INTO NUM1
            DISPLAY "DIVIDE 8 INTO NUM1"
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
            DIVIDE NUM2 INTO NUM3
            DISPLAY "DIVIDE NUM2 INTO NUM3"
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
            DIVIDE NUM4 INTO NUM3 GIVING NUM5
            DISPLAY "DIVIDE NUM4 INTO NUM3 GIVING NUM5"
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
            DIVIDE 3 INTO NUM1, NUM3
            DISPLAY "DIVIDE 3 INTO NUM1, NUM3"
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
            DIVIDE NUM2 INTO NUM3 GIVING NUM4, NUM5
            DISPLAY "DIVIDE NUM2 BY NUM3 GIVING NUM4, NUM5"
            DISPLAY "NUM1: ", NUM1, " NUM2: ", NUM2, " NUM3: ", NUM3,
               " NUM4: ", NUM4, " NUM5: ", NUM5
            DISPLAY " "

            DISPLAY "Add DIVIDE BY examples."
            STOP RUN.
       END PROGRAM DIVIDE-EXAMPLES.

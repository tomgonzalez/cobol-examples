      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-09-01
      * Purpose: An example of multiple IF statements with compound
      *          boolean expressions.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLE-IFS.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 GRADE            PIC 9(3).
       01 LETTER-GRADE   PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your numerical grade."
            ACCEPT GRADE

            IF GRADE >=  90
                MOVE "A" TO LETTER-GRADE
            END-IF

            IF GRADE >= 80 AND GRADE < 90
                MOVE "B" TO LETTER-GRADE
            END-IF

            IF GRADE >= 70 AND GRADE < 80
                MOVE "C" TO LETTER-GRADE
            END-IF

            IF GRADE >= 60 AND GRADE < 70
               MOVE "D" TO LETTER-GRADE
            END-IF

            IF GRADE < 60
               MOVE "F" TO LETTER-GRADE
            END-IF

            DISPLAY "Your letter grade is ", LETTER-GRADE, "."

            STOP RUN.

       END PROGRAM MULTIPLE-IFS.

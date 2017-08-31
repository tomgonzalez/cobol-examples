      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 GRADE            PIC 9(3).
       01 LETTER-GRADE-1   PIC X.
       01 LETTER-GRADE-2   PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your numerical grade."
            ACCEPT GRADE

            EVALUATE TRUE
               WHEN GRADE >= 90
                   MOVE "A" TO LETTER-GRADE-1
               WHEN GRADE >= 80
                   MOVE "B" TO LETTER-GRADE-1
               WHEN GRADE >= 70
                   MOVE "C" TO LETTER-GRADE-1
               WHEN GRADE >= 60
                   MOVE "D" TO LETTER-GRADE-1
               WHEN OTHER
                   MOVE "F" TO LETTER-GRADE-1
            END-EVALUATE

            EVALUATE GRADE
               WHEN 90 THRU 100
                   MOVE "A" TO LETTER-GRADE-2
               WHEN 80 THRU 89
                   MOVE "B" TO LETTER-GRADE-2
               WHEN 70 THRU 79
                   MOVE "C" TO LETTER-GRADE-2
               WHEN 60 THRU 69
                   MOVE "D" TO LETTER-GRADE-2
               WHEN OTHER
                   MOVE "F" TO LETTER-GRADE-2
            END-EVALUATE

            DISPLAY "Your letter grade 1 is ", LETTER-GRADE-1, "."
            DISPLAY "Your letter grade 2 is ", LETTER-GRADE-2, "."

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.

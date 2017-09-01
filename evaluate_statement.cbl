      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-09-01
      * Purpose:  Two examples of the EVALUATE statement.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-GRADE.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 GRADE            PIC 9(3).
       01 LETTER-GRADE-1   PIC X.
       01 LETTER-GRADE-2   PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Enter your numerical grade."
            ACCEPT GRADE

      * EVALUTE TRUE will look at the boolean expressions with each
      * WHEN clause until it finds one that is true.  The associated
      * code block will be performed and then execution will go to the
      * next statement after END-EVALUATE.  If none of the boolean
      * expressions evaluate to true, the code block associated with
      * WHEN OTHER (if there is a WHEN OTHER) is executed.

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

      * EVALUTE with a variable (in this case GRADE) will look at each
      * WHEN clause until it finds a value that matches the value in
      * the variable.  The associated code block will be performed and
      * then execution will go to the next statement after END-EVALUATE.
      * If none of the boolean expressions evaluate to true, the code
      * block associated with WHEN OTHER (if there is a WHEN OTHER) is
      * executed.

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

       END PROGRAM EVALUATE-GRADE.

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
       01 LETTER-GRADE   PIC X.
       01 LETTER-GRADE-2   PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your numerical grade."
            ACCEPT GRADE

            IF GRADE >=  90
                MOVE "A" TO LETTER-GRADE
            ELSE
                IF GRADE >= 80
                    MOVE "B" TO LETTER-GRADE
                ELSE
                    IF GRADE >= 70
                        MOVE "C" TO LETTER-GRADE
                    ELSE
                        IF GRADE >= 60
                            MOVE "D" TO LETTER-GRADE
                        ELSE
                            MOVE "F" TO LETTER-GRADE
                        END-IF
                    END-IF
                END-IF
            END-IF

            DISPLAY "Your letter grade is ", LETTER-GRADE, "."

            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.

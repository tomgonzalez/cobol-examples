      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM     PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 100-SOME-PROCEDURE
            MOVE 5 TO NUM
            PERFORM 100-SOME-PROCEDURE

            PERFORM VARYING NUM FROM 0 BY 1 UNTIL NUM > 10
               IF NUM = 3
                   EXIT PERFORM
               END-IF
               DISPLAY "The value of NUM is:  ", NUM
            END-PERFORM

            PERFORM VARYING NUM FROM 0 BY 1 UNTIL NUM > 10
               IF NUM = 7
                   EXIT PERFORM CYCLE
               END-IF
               DISPLAY "Hey, the value of NUM is now:  ", NUM
            END-PERFORM

            DISPLAY "Ok, program is over."

            STOP RUN.

       100-SOME-PROCEDURE.
           IF NUM = 5
               EXIT PARAGRAPH
           END-IF
           DISPLAY "Here is a message.".

       END PROGRAM YOUR-PROGRAM-NAME.

      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2017-09-01
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCEDURES-EXAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  HOURS-WORKED        PIC 9(2).
      * Note: Added an extra decimal place or USAGE clause to
      * to the PIC clause for HOURLY-RATE to prevent the ACCEPT
      * statement from converting the rightmost digit to zero.  Tested
      * on AS/400 and could not reproduce the issue.
       01  HOURLY-RATE         PIC 9(2)V9(3).
       01  HOURS-WORKED-OUT    PIC Z9.
       01  HOURLY-RATE-OUT     PIC $$9.99.
      * Note: Added an extra place to the left of the decimal point to
      * prevent size errors.  Possibly related to the issue with
      * ACCEPT above.  Tested on AS/400 and could not reproduce the
      * issue.
       01  GROSS-PAY-OUT       PIC $$$,$$9.9(2).

       PROCEDURE DIVISION.
       000-MAIN-PROCEDURE.

            PERFORM 100-GET-USER-INPUT
            PERFORM 200-PROCESS-ROUTINE
            PERFORM 300-PREPARE-OUTPUT
            PERFORM 400-DISPLAY-OUTPUT

            STOP RUN.

       100-GET-USER-INPUT.

            DISPLAY "Enter the number of hours worked."
            ACCEPT HOURS-WORKED

            DISPLAY "Enter the hourly pay rate."
            ACCEPT HOURLY-RATE.

       200-PROCESS-ROUTINE.

            MULTIPLY HOURS-WORKED BY HOURLY-RATE GIVING
               GROSS-PAY-OUT.

       300-PREPARE-OUTPUT.

            MOVE HOURS-WORKED TO HOURS-WORKED-OUT
            MOVE HOURLY-RATE TO HOURLY-RATE-OUT.

       400-DISPLAY-OUTPUT.

            DISPLAY "The gross pay due for working ", HOURS-WORKED-OUT,
               " hours at an hourly rate of ", HOURLY-RATE-OUT,
               " is ", GROSS-PAY-OUT, ".".

       END PROGRAM PROCEDURES-EXAMPLE.

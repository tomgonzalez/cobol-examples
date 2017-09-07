      ******************************************************************
      * Author:  Tom Gonzalez
      * Date:  2012-06-19
      * Purpose:  Give an example of a PERFORM THRU statement.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-THROUGH-EXAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Starting MAIN-PROCEDURE."
            PERFORM 100-PARAGRAPH-1 THRU 500-PARAGRAPH-5
            DISPLAY "Ending the program."
            STOP RUN.

       100-PARAGRAPH-1.
           DISPLAY "Executing paragraph 1.".

       200-PARAGRAPH-2.
           DISPLAY "Executing paragraph 2.".

       300-PARAGRAPH-3.
           DISPLAY "Executing paragraph 3.".

      * Usually put numbered paragraphs in numerical order, but just
      * illustrating that the any numbers in the paragraph names
      * do not affect the order in which they are executed.
       500-PARAGRAPH-5.
           DISPLAY "Executing paragraph 5.".

       400-PARAGRAPH-4.
           DISPLAY "Executing paragraph 4.".

       END PROGRAM PERFORM-THROUGH-EXAMPLE.

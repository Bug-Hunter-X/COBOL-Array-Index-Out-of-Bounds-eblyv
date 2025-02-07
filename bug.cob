01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE ZEROS. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10 WS-TABLE-ENTRY PIC X(80). 

* In this code, the WS-TABLE array is declared with a fixed size of 100 elements. 
* If the program attempts to access an element beyond this limit, it will lead to a storage violation. 
*  This is a common error in COBOL programs that can be difficult to detect.

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100
       MOVE "RECORD" & WS-COUNT TO WS-TABLE(WS-COUNT)
    END-PERFORM
    DISPLAY "DATA INSERTED"
    STOP RUN.
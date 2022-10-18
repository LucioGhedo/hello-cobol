 IDENTIFICATION DIVISION.
 PROGRAM-ID. NUMERIS.
 AUTHOR. LUCIO
 DATE-WRITTEN. 13/10/2022
* QUESTO E' UN COMMENTO
*
 ENVIRONMENT DIVISION.
 SOURCE-COMPUTER. IBM-PC.
 OBJECT-COMPUTER. IBM-PC.
 INPUT-OUTPUT SECTION.
 FILE-CONTROL.
*
 DATA DIVISION.
 FILE SECTION.
 WORKING-STORAGE SECTION.
 01 TAB-NUM           PIC X(9) VALUE  
 
     
          '298356713'.
 01 TAB-ORDER REDEFINES TAB-NUM.
     05 NUMERO             OCCURS 9 TIMES.
          06 MATRICOLA         PIC X.
 01 USERSTOP                   PIC 99. 
 01 RESULT                     PIC 99 VALUE 0.
 01 SAVED                      PIC 9 VALUE 9.

*
 PROCEDURE DIVISION. 
 MAIN SECTION.
           PERFORM ESEGUI THRU FINE-ESEGUI UNTIL RESULT = 10.
     STOP RUN. 
     
 ESEGUI.
       IF RESULT > 0       
**********************************       
* PER TROVARE QUELLO UGUALE A UNO*
**********************************
*          IF MATRICOLA(RESULT) = 1
*                DISPLAY 'NUMERO ' MATRICOLA(RESULT)
*                DISPLAY 'TROVATO ALLA ' RESULT ' POSIZIONE'
*          END-IF
**********************************
*     PER TROVARE IL MINORE      *
**********************************
          IF SAVED > MATRICOLA(RESULT)
                  MOVE MATRICOLA(RESULT) TO SAVED
          END-IF
       END-IF. 
**********************************
*   AGGIUNGO UNO AL CONTATORE    *
**********************************
       ADD 1 TO RESULT.
**********************************       
*     SE IL CICLO E' FINITO      *
**********************************
       IF RESULT = 10
             DISPLAY SAVED
       END-IF.
       
 FINE-ESEGUI. 
     EXIT.
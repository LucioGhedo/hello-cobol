 IDENTIFICATION DIVISION.
 PROGRAM-ID. DAYS.
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
 01 TAB-DIP           PIC X(28) VALUE  
 
     
          '1LUN2MAR3MER4GIO5VEN6SAB7DOM'.
 01 TAB-DIPENDENTI REDEFINES TAB-DIP.
     05 DIPENDENTE             OCCURS 7 TIMES.
          06 MATRICOLA         PIC X.
          06 STIPENDIO          PIC X(3).
 01 USERSTOP       PIC X.
 01 INDICE         PIC 99.
*
 PROCEDURE DIVISION. 
 MAIN SECTION.
           PERFORM ESEGUI THRU FINE-ESEGUI UNTIL USERSTOP = 'F'.
     STOP RUN. 
     
 ESEGUI.
     DISPLAY 'DAMMI UN GIORNO NUMERICO'.
   
     ACCEPT INDICE.
     IF INDICE = 0 
          DISPLAY 'IL NUMERO DEVE ESSERE POSITIVO'
          DISPLAY 'SE VUOI FERMARE PREMI F ALTRIMENTI INVIO'
          ACCEPT USERSTOP
     END-IF.
     IF INDICE > 7
           DISPLAY 'NUMERO TROPPO GRANDE'
           DISPLAY 'SE VUOI FERMARE PREMI F ALTRIMENTI INVIO'
           ACCEPT USERSTOP
     END-IF.
     IF INDICE > 0
           IF INDICE < 8
               DISPLAY 'LA MATRICOLA  CORRISPONDE A'
               DISPLAY STIPENDIO(INDICE) 
               DISPLAY 'SE VUOI FERMARE PREMI F ALTRIMENTI INVIO'
               ACCEPT USERSTOP
           END-IF
     END-IF.
     

 
 FINE-ESEGUI. 
     EXIT.
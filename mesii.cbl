 IDENTIFICATION DIVISION.
 PROGRAM-ID. MESII.
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
 01 GG            PIC X(25) VALUE
  '312831303130313130313031'.
 01 TAB-GG REDEFINES GG.
          05 G-MESE OCCURS 12 TIMES PIC 99.
 01 USER-INPUT-DAY                      PIC 9(2).
 01 USER-INPUT-MONTH                    PIC 9(2).
 01 USER-INPUT-YEAR                     PIC 9(4).
 01 USER-INPUT                          PIC X.
 01 NUMERO                          PIC 99.
          
*
 PROCEDURE DIVISION. 
 MAIN SECTION.
           PERFORM ESEGUI THRU FINE-ESEGUI UNTIL USER-INPUT = 'F'.
     STOP RUN.
 ESEGUI.
          DISPLAY 'DAMMI UNA GIORNO'.
          ACCEPT USER-INPUT-DAY.
          DISPLAY 'DAMMI UN MESE'.
          ACCEPT USER-INPUT-MONTH.
          DISPLAY 'DAMMI UN ANNO'.
          ACCEPT USER-INPUT-YEAR.
****************************************          
* CONTROLLO SE IL MESE E' MAGGIORE DI  *
*        ZERO E MINORE DI 13           *
****************************************
          IF USER-INPUT-MONTH > 0 AND
          USER-INPUT-MONTH < 13        
****************************************          
*    CONTROLLO SE IL GIORNO INSERITO   *
*        ESISTE NEL MESE SCELTO        *
*        E SIA MAGGIORE DI ZERO        *
****************************************
                 IF G-MESE(USER-INPUT-MONTH) >= USER-INPUT-DAY AND
                  USER-INPUT-DAY > 0 
****************************************                  
*   SE PASSA VERIFICHE STAMPO DATA     *
****************************************
                  DISPLAY 'DATA CORRETTA'        
                  DISPLAY USER-INPUT-DAY'/'USER-INPUT-MONTH
                  '/'USER-INPUT-YEAR 

           ELSE
                  DISPLAY 'DATA ERRATA'
                  END-IF
           ELSE   
                  DISPLAY 'DATA ERRATA'
                  
          END-IF
***************************************          
*      CHIEDO SE VUOLE CONTINUARE     *
***************************************
          DISPLAY 'VUOI RIPROVARE? PER SMETTERE PREMI F'
          ACCEPT USER-INPUT
 FINE-ESEGUI.

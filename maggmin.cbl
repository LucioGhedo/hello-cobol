 IDENTIFICATION DIVISION.
 PROGRAM-ID. MAGGMIN.
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
 01     VAR1              PIC 9(10).
 01     VAR2              PIC 9(10).
 01     VAR3              PIC 9(10).
 01     STOPUTENTE        PIC X.
 
*
 PROCEDURE DIVISION. 
 MAIN SECTION.
           PERFORM ESEGUI THRU FINE-ESEGUI UNTIL STOPUTENTE = 'n'.
           DISPLAY 'HELLO'.
     STOP RUN.
 ESEGUI
          DISPLAY 'DAMMI PRIMO NUMERO'.
          ACCEPT VAR1.
          DISPLAY 'DAMMI SECONDO NUMERO'.
          ACCEPT VAR2.
          DISPLAY 'DAMMI TERZO NUMERO'.
          ACCEPT VAR3.
*          EVALUATE TRUE
*         WHEN VAR1 > VAR2
*         WHEN VAR1 > VAR3
*        DISPLAY "Il piu' grande e' " VAR1
*          WHEN VAR2 > VAR3
*         WHEN VAR2 > VAR1
*         DISPLAY "Il piu' grande eaaaa' " VAR2
*         WHEN VAR3 > VAR1
*         WHEN VAR3 > VAR2
*         DISPLAY "Il piu' grande e' " VAR3
*         WHEN OTHER
*        DISPLAY 'Nessuna condizione verificata'
*          END-EVALUATE.
*         DISPLAY 'VUOI CONTINUARE? y/n'
*'.
*          ACCEPT STOPUTENTE.
          IF VAR1 > VAR2 
                  IF VAR1 > VAR3
                   DISPLAY "Il piu' grande e' " VAR1
                  END-IF
          END-IF
          IF VAR2 > VAR3
                IF VAR2 > VAR1
                      DISPLAY "Il piu' grande e' " VAR2
                END-IF
          END-IF
          IF VAR3 > VAR1
                IF VAR3 > VAR2
                     DISPLAY "Il piu' grande e' " VAR3
                END-IF
          END-IF
          IF VAR1 = VAR2
                IF VAR1 = VAR3
                      DISPLAY 'Tutti uguali'
                END-IF
          END-IF
          
          IF VAR1 = VAR2
          IF VAR1 > VAR3
           DISPLAY VAR1 VAR2 ' SONO UGUALI E NON CE MAGGIORE'
          END-IF
          END-IF
          
          IF VAR2 = VAR3
          IF VAR3 > VAR1
           DISPLAY VAR3 VAR2 ' SONO UGUALI E NON CE MAGGIORE'
          END-IF
          END-IF
          
          IF VAR1 = VAR3
          IF VAR1 > VAR2
           DISPLAY VAR1 VAR3 ' SONO UGUALI E NON CE MAGGIORE'
          END-IF
          END-IF
          
          DISPLAY 'VUOI CONTINUARE? y/n'
          ACCEPT STOPUTENTE.
          
 FINE-ESEGUI 
       EXIT.

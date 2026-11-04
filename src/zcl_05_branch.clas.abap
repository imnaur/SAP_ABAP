CLASS zcl_05_branch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_branch IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA number1 TYPE i VALUE -9.
    DATA number2 TYPE i VALUE 8.
    DATA op TYPE c LENGTH 1 VALUE 'U'.
    DATA result TYPE p LENGTH 16 DECIMALS 2.
    TRY.
          CASE op.
            WHEN '*'.
              result = number1 * number2.
              out->write( |Result is = { result }| ).
            WHEN '/'.
              result = number1 / number2.
              out->write( |Result is = { result }| ).
            WHEN '+'.
              result = number1 + number2.
              out->write( |Result is = { result }| ).
            WHEN '-'.
              result = number1 - number2.
              out->write( |Result is = { result }| ).
            WHEN OTHERS.
              out->write( '*************************************' ).
              out->write( 'Your input is not correct! Try again.' ).
              out->write( '*************************************' ).
          ENDCASE.

      CATCH cx_sy_zerodivide.
        out->write( '****************************************************' ).
        out->write( 'Division by zero is not possible! Change your input.' ).
        out->write( '****************************************************' ).
    ENDTRY.
      ENDMETHOD.
ENDCLASS.

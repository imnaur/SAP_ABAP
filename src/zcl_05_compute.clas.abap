CLASS zcl_05_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_compute IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data number1 type i VALUE -9.
  data number2 type i VALUE 4.
*   DATA result TYPE p LENGTH 8 DECIMALS 2.
  data(result) = number1 / number2. "Integer - inline data(var)
  data(output) = |{ number1 } / { number2 } = { result }|.


  out->write( |{ output }| ).


  ENDMETHOD.
ENDCLASS.

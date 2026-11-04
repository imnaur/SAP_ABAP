CLASS zcl_05_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_05_iterate IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    CONSTANTS max_count TYPE i VALUE 20.
    DATA fibonacci_numbers TYPE TABLE OF i.
    DATA fibonacci_number TYPE i.
    DATA f_num1 TYPE i VALUE 0.
    DATA f_num2 TYPE i VALUE 1.
    DATA next TYPE i.
    DATA result TYPE string.

    DO max_count TIMES.
      APPEND f_num1 TO fibonacci_numbers.
      next = f_num1 + f_num2.
      f_num1 = f_num2.
      f_num2 = next.
    ENDDO.
    LOOP AT fibonacci_numbers INTO fibonacci_number.
      IF sy-tabix = 1.
        result = |{ fibonacci_number }|.
      ELSE.
        result = |{ result }, { fibonacci_number }|.
      ENDIF.
    ENDLOOP.

    out->write( '***************************************************************************************' ).
    out->write( result ).
    out->write( '***************************************************************************************' ).
  ENDMETHOD.
ENDCLASS.

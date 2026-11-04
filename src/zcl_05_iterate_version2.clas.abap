CLASS zcl_05_iterate_version2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.




CLASS zcl_05_iterate_version2 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    CONSTANTS max_count TYPE i VALUE 20.
    DATA fibonacci_numbers1 TYPE TABLE OF i.
    DATA fibonacci_number1 TYPE i.
    DATA result1 TYPE string.
    DATA fi_num TYPE i.

    DO max_count TIMES.
      IF sy-index = 1.
        fi_num = 0.
      ELSEIF sy-index = 2.
        fi_num = 1.
      ELSE.
        fi_num = fibonacci_numbers1[ sy-index - 1 ]  + fibonacci_numbers1[ sy-index - 2 ].
      ENDIF.
      APPEND  fi_num TO fibonacci_numbers1.
    ENDDO.

    DATA(counter) = 0.
    LOOP AT fibonacci_numbers1 INTO fibonacci_number1.
      IF sy-tabix = 1.
        result1 = |{ fibonacci_number1 }|.
        out->write( result1 ).
      ELSE.
        counter = counter + 1.
        out->write( '***************************************************************************************' ).
        out->write( | { counter WIDTH = 4 ALIGN = LEFT } : { fibonacci_number1 WIDTH = 10 ALIGN = RIGHT }| ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.


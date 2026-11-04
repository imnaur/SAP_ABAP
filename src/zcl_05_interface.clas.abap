CLASS zcl_05_interface DEFINITION "определение класса
  PUBLIC
  FINAL "--- от этого класса нельзя наследовать другие классы / финальный!
  CREATE PUBLIC . " Создавать экземпляры (объекты) этого класса может кто угодно

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_interface IMPLEMENTATION. "реализация класса


  METHOD if_oo_adt_classrun~main.
    out->write( || ).
    out->write( repeat( val = '*' occ = 20 ) ).
    out->write( |  'Hello, World!'  | ).
    out->write( repeat( val = '*' occ = 20 ) ).

  ENDMETHOD.
ENDCLASS.

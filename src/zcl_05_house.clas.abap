CLASS zcl_05_house DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_house IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA go_house TYPE REF TO lcl_house.

    CREATE OBJECT go_house.

    go_house->set_house(
      i_house_id  = '123'
      i_street    = 'Hauptstraße 2'
      i_post_code = '798'
      i_city      = 'Berlin'
      ).

    go_house->get_house(
      RECEIVING
        rs_house = DATA(gs_house)
    ).

*
*    SELECT
*    FROM z05house
*    FIELDS house_id, street, post_code, city
*    INTO TABLE @DATA(gt_houses).
*

*    LOOP AT gt_houses ASSIGNING FIELD-SYMBOL(<wa>).
*    create OBJECT go_house_01.
*     go_house->set_house(
*      i_house_id  = <wa>-house_id
*      i_street    = <wa>-street
*      i_post_code = <wa>-post_code
*      i_city      = <wa>-city
*      ).

    SELECT
    FROM z05house
    FIELDS house_id, street, post_code, city
    INTO TABLE @DATA(gt_houses).


    LOOP AT gt_houses ASSIGNING FIELD-SYMBOL(<wa>).
    out->write( <wa> ).
      ENDLOOP.

  ENDMETHOD.

ENDCLASS.

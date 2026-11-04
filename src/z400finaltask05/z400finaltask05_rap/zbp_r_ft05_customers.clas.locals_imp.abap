CLASS lhc_zr_ft05_customers DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Customers
        RESULT result,
      GetPLZ FOR DETERMINE ON SAVE
       keys FOR Customers~GetPLZ.
ENDCLASS.

CLASS lhc_zr_ft05_customers IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
  METHOD GetPLZ.
    DATA lt_update TYPE TABLE FOR UPDATE zr_ft05_customers.

    READ ENTITIES OF zr_ft05_customers IN LOCAL MODE
      ENTITY Customers
        FIELDS ( Postcode )
        WITH CORRESPONDING #( keys )
      RESULT DATA(lt_customers).

    LOOP AT lt_customers INTO DATA(ls_customer).

      SELECT SINGLE
        FROM zft05_plz
        FIELDS City
        WHERE plz = @ls_customer-Postcode
        INTO @DATA(lv_city).

      IF sy-subrc = 0.
        APPEND VALUE #( %tky = ls_customer-%tky
                        City = lv_city ) TO lt_update.
      ENDIF.

    ENDLOOP.

    MODIFY ENTITIES OF zr_ft05_customers IN LOCAL MODE
      ENTITY Customers
        UPDATE FIELDS ( City )
        WITH lt_update.


  ENDMETHOD.

ENDCLASS.


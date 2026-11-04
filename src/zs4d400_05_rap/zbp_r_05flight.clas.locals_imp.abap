CLASS lhc_zr_05flight DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Flight
        RESULT result,
      validatePrice FOR VALIDATE ON SAVE
       keys FOR Flight~validatePrice.
ENDCLASS.

CLASS lhc_zr_05flight IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
  METHOD validatePrice.

    DATA failed_record LIKE LINE OF failed-flight.
    DATA reported_record LIKE LINE OF reported-flight.
    READ ENTITIES OF zr_05flight IN LOCAL MODE
    ENTITY Flight
    FIELDS ( Price )
    WITH CORRESPONDING #( keys )
    RESULT DATA(flights).


    LOOP AT flights INTO DATA(flight).
      IF Flight-Price <= 0.
        failed_record = VALUE #( %tky = Flight-%tky ).
        APPEND failed_record TO failed-flight.
        reported_record = VALUE #( %tky = Flight-%tky
                        %msg = new_message(
                                 id       = '/LRN/S4D400'
                                 number   =  '101'
                                 severity = ms-error ) ).

        APPEND reported_record TO reported-flight.

      ENDIF.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.

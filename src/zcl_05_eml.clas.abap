CLASS zcl_05_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_eml IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.

    DATA agencies_upd TYPE TABLE FOR UPDATE /DMO/I_AgencyTP.

    agencies_upd =  VALUE #( ( %key-agencyid = '070005'
                                Name = 'IMNAUR' ) ).

    MODIFY ENTITIES OF /DMO/I_AgencyTP
        ENTITY /DMO/Agency
        UPDATE
        FIELDS ( Name )
        WITH agencies_upd.

    COMMIT ENTITIES.

    out->write( 'Done!' ).
  ENDMETHOD.
ENDCLASS.

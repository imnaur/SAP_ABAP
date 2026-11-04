CLASS zcl_05_fill_plz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_05_fill_plz IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_plz TYPE STANDARD TABLE OF zft05_plz WITH EMPTY KEY.

    lt_plz = VALUE #(
      ( plz = '10115' city = 'Berlin' )
      ( plz = '20095' city = 'Hamburg' )
      ( plz = '80331' city = 'Muenchen' )
      ( plz = '50667' city = 'Koeln' )
      ( plz = '60311' city = 'Frankfurt' )
      ( plz = '70173' city = 'Stuttgart' )
      ( plz = '40213' city = 'Duesseldorf' )
      ( plz = '44135' city = 'Dortmund' )
      ( plz = '45127' city = 'Essen' )
      ( plz = '04109' city = 'Leipzig' )
      ( plz = '28195' city = 'Bremen' )
      ( plz = '01067' city = 'Dresden' )
      ( plz = '30159' city = 'Hannover' )
      ( plz = '90402' city = 'Nuernberg' )
      ( plz = '47051' city = 'Duisburg' )
      ( plz = '44787' city = 'Bochum' )
      ( plz = '42103' city = 'Wuppertal' )
      ( plz = '33602' city = 'Bielefeld' )
      ( plz = '53111' city = 'Bonn' )
      ( plz = '77933' city = 'Lahr' ) ).

    MODIFY zft05_plz FROM TABLE @lt_plz.

    IF sy-subrc = 0.
      out->write( |{ lines( lt_plz ) } Eintraege gespeichert| ).
    ELSE.
      out->write( 'Fehler beim Speichern' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.

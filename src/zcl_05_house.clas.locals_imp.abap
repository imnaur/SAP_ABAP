CLASS lcl_house DEFINITION CREATE PUBLIC.


  PUBLIC SECTION.

    METHODS set_house
      IMPORTING i_house_id  TYPE int1
                i_street    TYPE /dmo/street
                i_post_code TYPE /dmo/postal_code
                i_city      TYPE  /dmo/city.


    METHODS get_house
      RETURNING VALUE(rs_house) type z05house. "TYPE TABLE OF -> for table / Alle DB Tabellen kann als Struktur definieren

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: mv_house_id  TYPE int1,
          mv_street    TYPE /dmo/street,
          mv_post_code TYPE /dmo/postal_code,
          mv_city      TYPE  /dmo/city.


ENDCLASS.

CLASS lcl_house IMPLEMENTATION.

  METHOD set_house.
    mv_house_id = i_house_id.
    mv_street = i_street.
    mv_post_code = i_post_code.
    mv_city = i_city.

  ENDMETHOD.

  METHOD get_house.

  rs_house-house_id = mv_house_id.
  rs_house-street = mv_street.
  rs_house-post_code = mv_post_code.
  rs_house-city = mv_city.

  ENDMETHOD.

ENDCLASS.


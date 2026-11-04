CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.




    CLASS-DATA conn_counter TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        i_carrier_id    TYPE /dmo/carrier_id
        i_connection_id TYPE /dmo/connection_id
      RAISING
        cx_abap_invalid_value.

    METHODS get_output
      RETURNING
        VALUE(r_output) TYPE string_table.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    TYPES: BEGIN OF st_details,
             DepartureAirport   TYPE /dmo/airport_from_id,
             DestinationAirport TYPE /dmo/airport_to_id,
             AirlineName        TYPE /dmo/carrier_name,
           END OF  st_details.

    DATA details TYPE st_details.


ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.

  METHOD constructor.

    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
      RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ELSE.
      me->carrier_id = i_carrier_id.
      me->connection_id = i_connection_id.
      conn_counter += 1.
    ENDIF.


    SELECT SINGLE
    FROM /DMO/I_Connection
    FIELDS DepartureAirport, DestinationAirport, \_Airline-Name AS AirlineName
    WHERE AirlineID = @i_carrier_id AND ConnectionID = @i_connection_id
    INTO CORRESPONDING FIELDS OF @details.

  ENDMETHOD.

  METHOD get_output.

    APPEND |------------------------------| TO r_output.
    APPEND |Carrier:     { carrier_id    }| TO r_output.
    APPEND |Connection:  { connection_id }| TO r_output.
    APPEND |Airport from:     { details-DepartureAirport }| TO r_output.
    APPEND |Airport to:  { details-DestinationAirport }| TO r_output.
    APPEND |Airline name:  { details-AirlineName }| TO r_output.



  ENDMETHOD.

ENDCLASS.

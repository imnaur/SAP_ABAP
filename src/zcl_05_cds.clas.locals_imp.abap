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

    DATA airport_from_id TYPE /dmo/airport_from_id.
    DATA airport_to_id TYPE /dmo/airport_to_id.

    DATA carrier_name TYPE /dmo/carrier_name.

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


    SELECT
    FROM /DMO/I_Connection
    FIELDS AirlineID, DepartureAirport, DestinationAirport "Alias from CDS View
    WHERE AirlineID = @i_carrier_id AND ConnectionID = @i_connection_id
    INTO (@carrier_name, @airport_from_id, @airport_to_id).
    ENDSELECT.

  ENDMETHOD.

  METHOD get_output.

    APPEND |------------------------------| TO r_output.
    APPEND |Carrier:     { carrier_id    }| TO r_output.
    APPEND |Connection:  { connection_id }| TO r_output.
    APPEND |Airport from:     { airport_from_id    }| TO r_output.
    APPEND |Airport to:  { airport_to_id }| TO r_output.
    APPEND |Airline name:  { carrier_name }| TO r_output.



  ENDMETHOD.

ENDCLASS.

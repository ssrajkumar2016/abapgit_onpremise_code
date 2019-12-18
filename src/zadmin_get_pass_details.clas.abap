class ZADMIN_GET_PASS_DETAILS definition
  public
  final
  create public .

public section.

  data T_DATA type ZFTPT_TRAIN .
  data IO_MODEL type ref to ZADMIN_GET_PASS_DETAILS .

  methods GET_DATA
    exporting
      !IR_ERDAT type ZFTPT_TRAIN .
  methods GET_OBJECT
    importing
      value(IF_NAME) type CHAR30 .
protected section.
private section.
ENDCLASS.



CLASS ZADMIN_GET_PASS_DETAILS IMPLEMENTATION.


  method GET_DATA.

    DATA: lt_train type TABLE OF zftpt_train.

    SELECT * FROM  zftpt_train INTO table lt_train.






  endmethod.


  METHOD get_object.


    DATA: lo_object TYPE REF TO object.
*
* Generic object reference to importing class
    CREATE OBJECT lo_object TYPE (if_name).
    IF sy-subrc = 0.
*   Downcasting to assign generic object to O_MODEL
      io_model ?= lo_object.
    ENDIF.
*

  ENDMETHOD.
ENDCLASS.

class ZRD_OOP_CLASS1 definition
  public
  create public .

public section.

  interfaces ZIF_RD_SUM .
  interfaces ZIF_RD_SUM2 .
protected section.

  methods DIVIDE
    importing
      value(IV_VALUE1) type NTGEW
      value(IV_VALUE2) type NTGEW
    changing
      value(CV_RESULT) type NTGEW .
private section.
ENDCLASS.



CLASS ZRD_OOP_CLASS1 IMPLEMENTATION.


  METHOD divide.

    TRY.
        cv_result = iv_value1 / iv_value2.
      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
    ENDTRY.
  ENDMETHOD.


  method ZIF_RD_SUM2~CIKAR.

    ev_result = iv_value1 - iv_value2.
    zif_rd_sum2~mv_value = ev_result.

  endmethod.


  METHOD zif_rd_sum~sum.

    ev_result = iv_value1 + iv_value2.
    zif_rd_sum~mv_value = ev_result.
  ENDMETHOD.
ENDCLASS.

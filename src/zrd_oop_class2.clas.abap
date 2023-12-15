class ZRD_OOP_CLASS2 definition
  public
  inheriting from ZRD_OOP_CLASS1
  create public .

public section.

  methods CALL_METHODS
    importing
      value(IV_VALUE1) type NTGEW optional
      value(IV_VALUE2) type NTGEW optional
      value(IV_VALUE3) type NTGEW optional
      value(IV_VALUE4) type NTGEW optional
    exporting
      value(CV_RESULT1) type NTGEW
      value(CV_RESULT2) type NTGEW .
protected section.
private section.
ENDCLASS.



CLASS ZRD_OOP_CLASS2 IMPLEMENTATION.


  METHOD call_methods.

    DATA(lo_class1) = NEW zrd_oop_class1( ).

    TRY.
        divide(
          EXPORTING
            iv_value1 =  iv_value1                " Net ağırlık
            iv_value2 =  iv_value2                " Net ağırlık
          CHANGING
            cv_result = cv_result1                 " Net ağırlık
        ).

      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).

    ENDTRY.

    TRY.
        lo_class1->divide(
          EXPORTING
            iv_value1 =  iv_value3              " Net ağırlık
            iv_value2 =  iv_value4              " Net ağırlık
          CHANGING
            cv_result = cv_result2                 " Net ağırlık
        ).

      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide2).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.

interface ZIF_RD_SUM
  public .


  data MV_VALUE type NTGEW .

  methods SUM
    importing
      value(IV_VALUE1) type NTGEW optional
      value(IV_VALUE2) type NTGEW optional
    exporting
      value(EV_RESULT) type NTGEW .
endinterface.

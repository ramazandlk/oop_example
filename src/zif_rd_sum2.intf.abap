interface ZIF_RD_SUM2
  public .


  class-data MV_VALUE type NTGEW .

  methods CIKAR
    importing
      value(IV_VALUE1) type NTGEW
      value(IV_VALUE2) type NTGEW
    returning
      value(EV_RESULT) type NTGEW .
endinterface.

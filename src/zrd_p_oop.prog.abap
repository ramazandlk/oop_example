*&---------------------------------------------------------------------*
*& Report ZRD_P_OOP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrd_p_oop.


PARAMETERS: p_1 TYPE ntgew OBLIGATORY,
            p_2 TYPE ntgew OBLIGATORY,
            p_3 TYPE ntgew OBLIGATORY,
            p_4 TYPE ntgew OBLIGATORY.


DATA(lo_ref1) = NEW zrd_oop_class1( ).
DATA(lo_ref2) = NEW zrd_oop_class2( ).
DATA(lo_ref1_2) = NEW zrd_oop_class1( ).


lo_ref1->zif_rd_sum~sum(
  EXPORTING
    iv_value1 = p_1                  " Net ağırlık
    iv_value2 = p_2                 " Net ağırlık
  IMPORTING
    ev_result = DATA(ev_result1)                  " Net ağırlık
).

DATA(ev_result2) = lo_ref1->zif_rd_sum2~cikar(
                     iv_value1 = p_1                 " Net ağırlık
                     iv_value2 = p_2                 " Net ağırlık
                   ).


lo_ref1_2->zif_rd_sum~sum(
  EXPORTING
    iv_value1 = p_3                " Net ağırlık
    iv_value2 = p_4                " Net ağırlık
  IMPORTING
    ev_result = DATA(ev_result3)                  " Net ağırlık
).

DATA(ev_result4) = lo_ref1_2->zif_rd_sum2~cikar(
                     iv_value1 = p_3                 " Net ağırlık
                     iv_value2 = p_4                 " Net ağırlık
                   ).


lo_ref2->call_methods(
  EXPORTING
    iv_value1  = p_1                 " Net ağırlık
    iv_value2  = p_2                 " Net ağırlık
    iv_value3  = p_3                 " Net ağırlık
    iv_value4  = p_4                 " Net ağırlık
  IMPORTING
    cv_result1 = DATA(ev_result5)                 " Net ağırlık
    cv_result2 = DATA(ev_result6)                 " Net ağırlık
).

WRITE: 'Class1_1 Toplama : ', ev_result1.
WRITE:/ 'Class1_1 Çıkarma : ', ev_result2.
WRITE:/ 'Class1_1_2 Toplama : ', ev_result3.
WRITE:/ 'Class1_1_2 Çıkarma : ', ev_result4.
WRITE:/ 'Class1_2 : ', ev_result5.
WRITE:/ 'Class1_2 : ', ev_result6.
WRITE:/ 'Class1_1 Instance: ', lo_ref1->zif_rd_sum~mv_value.
WRITE:/ 'Class1_1 Static : ', lo_ref1->zif_rd_sum2~mv_value.
WRITE:/ 'Class2 Instance değişken 2: ', lo_ref1_2->zif_rd_sum~mv_value.
WRITE:/ 'Class2 Static değişken 2: ', lo_ref1->zif_rd_sum2~mv_value.

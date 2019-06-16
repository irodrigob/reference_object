*&---------------------------------------------------------------------*
*& Report zref_object_example_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zref_object_example_1.

PARAMETERS: p_objn  TYPE sobj_name,
            p_objt  TYPE trobjtype,
            p_level TYPE i.


START-OF-SELECTION.

  NEW zcl_ref_object( )->search_refs(
    EXPORTING
      iv_object              = p_objn
      iv_type                = p_objt
      iv_level_depth_max     = p_level
    IMPORTING
      et_refs                = DATA(lt_refs)
    EXCEPTIONS
      type_object_not_valid = 1
      OTHERS                = 2 ).

  cl_demo_output=>display( lt_refs ).

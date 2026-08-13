CLASS zadc_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zadc_class_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA: lti_art TYPE STANDARD TABLE OF zadc_tab_art.

  lti_art = VALUE #(
   ( client = sy-mandt id_art = 1 descr = 'Mini Colores' descr2 = 'Un mini estuche, mini colores'
     color = 'Varios' piezas = 12 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-musgrave-ceres-03_600x.jpg?v=1770184541' )

   ( client = sy-mandt id_art = 2 descr = 'Libreta ondas' descr2 = 'Libreta pequeña ondas'
     color = 'Varios' piezas = 1  stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/La-Libreteria-ondas-1_600x.jpg?v=1588290343' )

   ( client = sy-mandt id_art = 3 descr = 'Libreta lineas' descr2 = 'Libreta pequeña lineas'
     color = 'Varios' piezas = 1  stock = 95 url = 'https://lalibreteria.mx/cdn/shop/products/La-Libreteria-Lineas-Black-1_600x.jpg?v=1588290312' )

   ( client = sy-mandt id_art = 4 descr = 'Marcador' descr2 = 'Marcador Stabilo Boss Original'
     color = 'Varios' piezas = 10  stock = 150 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-stabilo-boss-1_600x.jpg?v=1602029211' )

   ( client = sy-mandt id_art = 5 descr = 'Lapicera' descr2 = 'Lapicera Soolla - Studio Bag Coffee bean'
     color = 'Varios' piezas = 10  stock = 150 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-soolla-studio-bag-coffee-bean-01_600x.jpg?v=1777361640' )

   ( client = sy-mandt id_art = 6 descr = 'Lapices' descr2 = 'Lapiz Tombow Mono HB Highest Quality'
     color = 'Varios' piezas = 1  stock = 150 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-tombow-mono-hb-01_600x.jpg?v=1783316226' )

   ).

   INSERT zadc_tab_art FROM TABLE @lti_art.
   IF sy-subrc = 0.
    out->write( 'Insert Succefull' ).
   ELSE.
    out->write( 'Insert Wrong' ).
   ENDIF.

  ENDMETHOD.
ENDCLASS.

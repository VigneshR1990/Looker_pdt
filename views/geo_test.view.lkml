view: geo_test {
  sql_table_name: `ecommerce_prod.geo_test`
    ;;

  dimension: num_bikes_available {
    type: number
    sql: ${TABLE}.num_bikes_available ;;
  }

  dimension: wkt {
    type: string
    sql: ${TABLE}.WKT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

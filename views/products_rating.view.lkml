view: products_rating {
  sql_table_name: `ecommerce_prod.products_rating`
    ;;

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

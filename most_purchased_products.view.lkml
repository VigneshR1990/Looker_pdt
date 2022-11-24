view: most_purchased_products {
  derived_table: {
    materialized_view: yes
    sql: SELECT productName, COUNT(*) FROM `ecomm-analysis.ecommerce_prod.events_flat_data` LEFT JOIN UNNEST(items) as items GROUP BY 1 ORDER BY 2 DESC LIMIT 100
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  set: detail {
    fields: [product_name, f0_]
  }
}

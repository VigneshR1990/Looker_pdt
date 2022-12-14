view: prod_affinity_op {
  sql_table_name: `ecommerce_prod.prod_affinity_op`
    ;;

  dimension: predicted_rating_confidence {
    type: number
    sql: ${TABLE}.predicted_rating_confidence ;;
  }

  dimension: product_recommended {
    type: string
    sql: ${TABLE}.product_recommended ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: [users.user_id, users.device__mobile_brand_name, users.device__mobile_model_name, users.device__mobile_marketing_name]
  }
}

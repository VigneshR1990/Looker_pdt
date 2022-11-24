view: user_clusters_op {
  sql_table_name: `ecommerce_prod.user_clusters_op`
    ;;

  dimension: average_order_value {
    type: number
    sql: ${TABLE}.average_order_value ;;
  }

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
  }

  dimension: no_of_orders {
    type: number
    sql: ${TABLE}.no_of_orders ;;
  }

  dimension: session_count {
    type: number
    sql: ${TABLE}.session_count ;;
  }

  dimension: total_time_spend_by_user_in_msec {
    type: number
    sql: ${TABLE}.total_time_spend_by_user_in_msec ;;
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

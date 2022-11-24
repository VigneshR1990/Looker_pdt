view: events {
  sql_table_name: `ecommerce_prod.events`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: engagement_time_msec {
    type: string
    sql: ${TABLE}.engagementTimeMsec ;;
  }

  dimension: event_bundle_sequence_id {
    type: string
    sql: ${TABLE}.eventBundleSequenceId ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.eventDate ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.eventName ;;
  }

  dimension: event_timestamp {
    type: string
    sql: ${TABLE}.eventTimestamp ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.gaSessionId ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.productId ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: unique_items {
    type: string
    sql: ${TABLE}.uniqueItems ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_name,
      event_name,
      products.product_id,
      products.product_name,
      users.user_id,
      users.device__mobile_brand_name,
      users.device__mobile_model_name,
      users.device__mobile_marketing_name
    ]
  }
}

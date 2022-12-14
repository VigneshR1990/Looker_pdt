include: "../data_tests.lkml"
view: orders {
  sql_table_name: `ecommerce_prod.orders`
    ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.orderId ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: engagement_time_msec {
    type: string
    sql: ${TABLE}.engagement_time_msec ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: item_quantity {
    type: string
    sql: ${TABLE}.itemQuantity ;;
  }

  dimension: line_items {
    hidden: yes
    sql: ${TABLE}.lineItems ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.orderDate ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.orderTotal ;;
  }

  dimension: time_stamp {
    type: string
    sql: ${TABLE}.timeStamp ;;
  }

  dimension: unique_items_quantity {
    type: string
    sql: ${TABLE}.uniqueItemsQuantity ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      users.user_id,
      users.device__mobile_brand_name,
      users.device__mobile_model_name,
      users.device__mobile_marketing_name,
      events_flat_data.count
    ]
  }
}

view: orders__line_items {
  dimension: brand {
    type: string
    sql: brand ;;
  }

  dimension: category {
    type: string
    sql: category ;;
  }

  dimension: orders__line_items {
    type: string
    hidden: yes
    sql: orders__line_items ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: product_id {
    type: string
    sql: productId ;;
  }

  dimension: product_name {
    type: string
    sql: productName ;;
  }

  dimension: quantity {
    type: string
    sql: quantity ;;
  }
}

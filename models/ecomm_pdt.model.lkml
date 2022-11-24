connection: "pdt_test"

# include all the views
include: "/views/**/*.view"

datagroup: ecomm_pdt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecomm_pdt_default_datagroup

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: orders__line_items {
    view_label: "Orders: Lineitems"
    sql: LEFT JOIN UNNEST(${orders.line_items}) as orders__line_items ;;
    relationship: one_to_many
  }
}

explore: prod_affinity_op {
  join: users {
    type: left_outer
    sql_on: ${prod_affinity_op.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: geo_test1 {}

explore: geo_coordinates {}

explore: geo_test {}

explore: events {
  join: products {
    type: left_outer
    sql_on: ${events.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: premium_customers {
  join: users {
    type: left_outer
    sql_on: ${premium_customers.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: events_flat_data {
  join: orders {
    type: left_outer
    sql_on: ${events_flat_data.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${events_flat_data.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: events_flat_data__items {
    view_label: "Events Flat Data: Items"
    sql: LEFT JOIN UNNEST(${events_flat_data.items}) as events_flat_data__items ;;
    relationship: one_to_many
  }
}

explore: products {}

explore: users {}

explore: products_rating {}

explore: user_clusters_op {
  join: users {
    type: left_outer
    sql_on: ${user_clusters_op.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

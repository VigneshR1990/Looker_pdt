test: order_date_is_accurate {
  explore_source: orders {
    column: order_date {
      field: orders.order_date
    }
    # filters: [orders.order_date: "2017"]
  }
  # assert: revenue_is_expected_value {
  #   expression:  ${orders.unique_items_quantity1} == null ;;
  # }

  assert: order_date_is_expected_value {
    expression: NOT is_null(${orders.order_date}) ;;

  }
}

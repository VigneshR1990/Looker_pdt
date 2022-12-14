view: events_flat_data {
  sql_table_name: `ecommerce_prod.events_flat_data`
    ;;

  dimension: device__advertising_id {
    type: string
    sql: ${TABLE}.device.advertisingId ;;
    group_label: "Device"
    group_item_label: "Advertising ID"
  }

  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__browser_version {
    type: string
    sql: ${TABLE}.device.browserVersion ;;
    group_label: "Device"
    group_item_label: "Browser Version"
  }

  dimension: device__category {
    type: string
    sql: ${TABLE}.device.category ;;
    group_label: "Device"
    group_item_label: "Category"
  }

  dimension: device__is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device.isLimitedAdTracking ;;
    group_label: "Device"
    group_item_label: "Is Limited Ad Tracking"
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device.language ;;
    group_label: "Device"
    group_item_label: "Language"
  }

  dimension: device__mobile_brand_name {
    type: string
    sql: ${TABLE}.device.mobileBrandName ;;
    group_label: "Device"
    group_item_label: "Mobile Brand Name"
  }

  dimension: device__mobile_marketing_name {
    type: string
    sql: ${TABLE}.device.mobileMarketingName ;;
    group_label: "Device"
    group_item_label: "Mobile Marketing Name"
  }

  dimension: device__mobile_model_name {
    type: string
    sql: ${TABLE}.device.mobileModelName ;;
    group_label: "Device"
    group_item_label: "Mobile Model Name"
  }

  dimension: device__mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.device.mobileOsHardwareModel ;;
    group_label: "Device"
    group_item_label: "Mobile OS Hardware Model"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operatingSystem ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device.operatingSystemVersion ;;
    group_label: "Device"
    group_item_label: "Operating System Version"
  }

  dimension: device__time_zone_offset_seconds {
    type: string
    sql: ${TABLE}.device.timeZoneOffsetSeconds ;;
    group_label: "Device"
    group_item_label: "Time Zone Offset Seconds"
  }

  dimension: device__vendor_id {
    type: string
    sql: ${TABLE}.device.vendorId ;;
    group_label: "Device"
    group_item_label: "Vendor ID"
  }

  dimension: engagement_time_msec {
    type: string
    sql: ${TABLE}.engagementTimeMsec ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.gaSessionId ;;
  }

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo.city ;;
    group_label: "Geo"
    group_item_label: "City"
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo.continent ;;
    group_label: "Geo"
    group_item_label: "Continent"
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo.country ;;
    group_label: "Geo"
    group_item_label: "Country"
  }

  dimension: geo__metro {
    type: string
    sql: ${TABLE}.geo.metro ;;
    group_label: "Geo"
    group_item_label: "Metro"
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo.region ;;
    group_label: "Geo"
    group_item_label: "Region"
  }

  dimension: geo__sub_continent {
    type: string
    sql: ${TABLE}.geo.sub_continent ;;
    group_label: "Geo"
    group_item_label: "Sub Continent"
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.itemQuantity ;;
  }

  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }

  dimension: lifetime_value {
    type: number
    sql: ${TABLE}.lifetimeValue ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.orderDate ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.orderId ;;
  }

  dimension: ordertotal {
    type: number
    sql: ${TABLE}.ordertotal ;;
  }

  dimension: unique_items_quantity {
    type: number
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
      event_name,
      device__mobile_brand_name,
      device__mobile_model_name,
      device__mobile_marketing_name,
      orders.order_id,
      users.user_id,
      users.device__mobile_brand_name,
      users.device__mobile_model_name,
      users.device__mobile_marketing_name
    ]
  }
}

view: events_flat_data__items {
  dimension: brand {
    type: string
    sql: brand ;;
  }

  dimension: category {
    type: string
    sql: category ;;
  }

  dimension: events_flat_data__items {
    type: string
    hidden: yes
    sql: events_flat_data__items ;;
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
    type: number
    sql: quantity ;;
  }
}

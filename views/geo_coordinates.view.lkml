view: geo_coordinates {
  sql_table_name: `ecommerce_prod.GeoCoordinates`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: double_field_4 {
    type: number
    sql: ${TABLE}.double_field_4 ;;
  }

  dimension: iso_3166_country_code {
    type: string
    sql: ${TABLE}.ISO_3166_Country_Code ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: fct_order_detail {
  sql_table_name: `dw_northwind.fct_order_detail`
    ;;

  dimension: customer_fk {
    type: number
    sql: ${TABLE}.customer_fk ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: employee_fk {
    type: number
    sql: ${TABLE}.employee_fk ;;
  }

  dimension: freight {
    type: number
    sql: ${TABLE}.freight ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: product_fk {
    type: number
    sql: ${TABLE}.product_fk ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension_group: required {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.required_date ;;
  }

  dimension: ship_address {
    type: string
    sql: ${TABLE}.ship_address ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ship_city ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ship_country ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.ship_name ;;
  }

  dimension: ship_postal_code {
    type: string
    sql: ${TABLE}.ship_postal_code ;;
  }

  dimension: ship_region {
    type: string
    sql: ${TABLE}.ship_region ;;
  }

  dimension_group: shipped {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.shipped_date ;;
  }

  dimension: shipper_fk {
    type: number
    sql: ${TABLE}.shipper_fk ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_name]
  }
}

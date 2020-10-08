view: dim_products {
  sql_table_name: `dw_northwind.dim_products`
    ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: is_discontinued {
    type: string
    sql: ${TABLE}.is_discontinued ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_sk {
    type: number
    sql: ${TABLE}.product_sk ;;
  }

  dimension: quantity_per_unit {
    type: string
    sql: ${TABLE}.quantity_per_unit ;;
  }

  dimension: reorder_level {
    type: number
    sql: ${TABLE}.reorder_level ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  dimension: units_in_stock {
    type: number
    sql: ${TABLE}.units_in_stock ;;
  }

  dimension: units_on_order {
    type: number
    sql: ${TABLE}.units_on_order ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}

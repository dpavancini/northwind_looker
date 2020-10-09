view: dim_shippers {
  sql_table_name: `dw_northwind.dim_shippers`
    ;;
  label: "Transportadoras"

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: shipper_id {
    type: number
    sql: ${TABLE}.shipper_id ;;
  }

  dimension: shipper_sk {
    type: number
    sql: ${TABLE}.shipper_sk ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name]
  }
}

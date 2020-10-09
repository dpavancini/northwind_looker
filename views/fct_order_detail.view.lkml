view: fct_order_detail {
  sql_table_name: `dw_northwind.fct_order_detail`
      ;;
  label: "Pedidos"

  dimension: customer_fk {
    label: "Cliente"
    type: number
    sql: ${TABLE}.customer_fk ;;
  }

  dimension: discount {
    label: "Desconto"
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: employee_fk {
    label: "Funcionário"
    type: number
    sql: ${TABLE}.employee_fk ;;
  }

  dimension: freight {
    label: "Frete"
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
    label: "Data do Pedido"
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    label: "ID do pedido"
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: product_fk {
    label: "Produto"
    type: number
    sql: ${TABLE}.product_fk ;;
  }

  dimension: quantity {
    label: "Quantidade"
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
    label: "Data Prevista"
    sql: ${TABLE}.required_date ;;
  }

  dimension: ship_address {
    label: "Endereço de Entrega"
    type: string
    sql: ${TABLE}.ship_address ;;
  }

  dimension: ship_city {
    label: "Cidade de Entrega"
    type: string
    sql: ${TABLE}.ship_city ;;
  }

  dimension: ship_country {
    label: "País de entrega"
    type: string
    sql: ${TABLE}.ship_country ;;
  }

  dimension: ship_name {
    label: "Nome de Entrega"
    type: string
    sql: ${TABLE}.ship_name ;;
  }

  dimension: ship_postal_code {
    label: "CEP de entrega"
    type: string
    sql: ${TABLE}.ship_postal_code ;;
  }

  dimension: ship_region {
    label: "Região de Entrega"
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
    label: "Data de Envio"
    sql: ${TABLE}.shipped_date ;;
  }

  dimension: shipper_fk {
    label: "Transportadora"
    type: number
    sql: ${TABLE}.shipper_fk ;;
  }

  dimension: unit_price {
    label: "Preço Unitário"
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  measure: count {
    label: "Contagem de Pedidos"
    type: count
    drill_fields: [ship_name]
  }

  dimension: gross_revenue {
    label: "Receita Bruta"
    type: number
    sql: ${TABLE}.unit_price *  ${TABLE}.quantity   ;;
  }

#   measure: count {
#     label: "Contagem de Pedidos"
#     type: count
#     drill_fields: [ship_name]
#   }


#   measure: count {
#     label: "Contagem de Pedidos"
#     type: count
#     drill_fields: [ship_name]
#   }

# measure: count {
#   label: "Contagem de Pedidos"
#   type: count
#   drill_fields: [ship_name]
# }

# measure: count {
#   label: "Contagem de Pedidos"
#   type: count
#   drill_fields: [ship_name]
# }

# measure: count {
#   label: "Contagem de Pedidos"
#   type: count
#   drill_fields: [ship_name]
# }









}

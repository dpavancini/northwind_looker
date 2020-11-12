connection: "demo_northwind_dw"

# include all the views
include: "/views/**/*.view"

datagroup: dw_northwind_lookml_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dw_northwind_lookml_default_datagroup


explore: fct_order_detail {
  label: "Pedidos"

  join: dim_customers {
    view_label: "Pessoas"
    relationship: many_to_one
    sql_on: ${fct_order_detail.customer_fk} = ${dim_customers.customer_sk} ;;
  }

  join: dim_employees {
    view_label: "Funcionários"
    relationship: many_to_one
    sql_on: ${fct_order_detail.employee_fk} = ${dim_employees.employee_sk} ;;
  }

  join: dim_products {
    view_label: "Produtos"
    relationship: many_to_one
    sql_on: ${fct_order_detail.product_fk} = ${dim_products.product_sk} ;;
  }

  join: dim_shippers {
    view_label: "Transportadoras"
    relationship: many_to_one
    sql_on: ${fct_order_detail.shipper_fk} = ${dim_shippers.shipper_sk} ;;
  }


}

explore: dim_customers {}

explore: dim_employees {}

explore: dim_products {}

explore: dim_shippers {}

explore: dim_suppliers {}

connection: "demo_northwind_dw"

# include all the views
include: "/views/**/*.view"

datagroup: dw_northwind_lookml_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dw_northwind_lookml_default_datagroup

explore: dim_customers {}

explore: dim_employees {}

explore: dim_products {}

explore: dim_shippers {}

explore: dim_suppliers {}

explore: fct_order_detail {

  join: dim_customers {
    view_label: "Customers"
    relationship: many_to_one
    sql_on: ${fct_order_detail.customer_fk} = ${dim_customers.customer_sk} ;;
  }



}

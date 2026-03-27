#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  mod_instructions_server("instructions_1")
  mod_table_server("table_1")
  mod_map_server("map_1")
  mod_chart_server("chart_1")
}

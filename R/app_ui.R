#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  shiny::fluidPage(
    golem_add_external_resources(),
    bslib::page_navbar(
      title = "Ultimate Dashboard",
      theme = bslib::bs_theme(bootswatch = "lux"),
      bslib::nav_panel("Instructions", mod_instructions_ui("instructions_1")),
      bslib::nav_panel("Data Table", mod_table_ui("table_1")),
      bslib::nav_panel("Map", mod_map_ui("map_1")),
      bslib::nav_panel("Chart", mod_chart_ui("chart_1"))
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "GolemAppTest"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

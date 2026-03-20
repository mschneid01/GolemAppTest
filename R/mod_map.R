#' map UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @importFrom magrittr %>%
mod_map_ui <- function(id) {
  ns <- NS(id)
  tagList(
    shiny::h3("Map"),
    leaflet::leafletOutput(ns("map"))
  )
}

#' map Server Functions
#'
#' @noRd
mod_map_server <- function(id){
  shiny::moduleServer(id, function(input, output, session){
    ns <- session$ns
    output$map <- leaflet::renderLeaflet({
      lats <- runif(10, 25, 48)
      lngs <- runif(10, -120, -70)
      leaflet::leaflet() %>%
      leaflet::addTiles() %>%
        leaflet::addMarkers(lng = lngs, lat = lats)
    })
  })
}

## To be copied in the UI
# mod_map_ui("map_1")

## To be copied in the server
# mod_map_server("map_1")

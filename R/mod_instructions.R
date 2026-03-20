#' instructions UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_instructions_ui <- function(id) {
  ns <- NS(id)
  tagList(
  textOutput(ns("instructions"))
  #textOutput(ns("placeholder_data_entry"), "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
  #           sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco")
  )
}

#' instructions Server Functions
#'
#' @noRd
mod_instructions_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
    output$instructions <- renderPrint({
    print("To access data select the table tab \n
             To access visualization select the chart tab \n To access the map select the map tab")
  })
})
}

## To be copied in the UI
# mod_instructions_ui("instructions_1")

## To be copied in the server
# mod_instructions_server("instructions_1")

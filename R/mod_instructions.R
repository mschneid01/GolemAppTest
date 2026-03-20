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

  )
}

#' instructions Server Functions
#'
#' @noRd
mod_instructions_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_instructions_ui("instructions_1")

## To be copied in the server
# mod_instructions_server("instructions_1")

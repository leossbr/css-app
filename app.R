
library(shiny)

# action button padrão

ui <- fluidPage(
    br(),
    actionButton(
        inputId = "go",
        label = "go",
        class = "btn-warning"
    )
)

# 1. Adicionando o style diretamente na tag;

ui <- fluidPage(
    br(),
    actionButton(
        inputId = "go",
        label = "go",
        style = "background-color: #286090; color: #fff;"
    )
)

# 2. Adicionando o style no header do seu UI

ui <- fluidPage(
    br(),
    tags$head(
        tags$style(
            HTML(
                ".btn-default { 
                background-color: #286090;
                color: #fff;
                }"
            )
        )
    ),
    actionButton(
        inputId = "go",
        label = "go"
    )
)

# 3. Adicionando o style no arquivo www/styles.css

ui <- fluidPage(
    br(),
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
    ),
    actionButton(
        inputId = "go",
        label = "go"
    ),
    br(),
    actionButton(
        inputId = "perigo",
        label = "perigo",
        class = "btn-perigo"
    ),
    br(),
    actionButton(
        inputId = "perigo2",
        label = "perigo2",
        class = "btn-perigo"
    ),
    actionButton(
        inputId = "perigo3",
        label = "perigo3",
        class = "btn-perigo"
    )
)    

server <- function(input, output, session) {
    
}

shinyApp(ui, server)



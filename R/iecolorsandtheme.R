################### IE COLOR PALETTES

palette_categorical <- c(
  "Teal"      = "#1B9CAB",
  "Burgundy"  = "#993A53",
  "Yellow"    = "#F4C151",
  "Dark Blue" = "#2A6092",
  "Orange"    = "#D68643",
  "Sky Blue"  = "#64AEE6",
  "Tan"       = "#D1A686",
  "Mint"      = "#9ED3DB",
  "Blue-Gray" = "#8CA6BC"
)

palette_sequential <- c(
  "#1B9CAB",
  "#43A6B4",
  "#5EB0BC",
  "#75BBC5",
  "#8BC5CE",
  "#9FD0D7",
  "#B4DAE0",
  "#C7E4E9",
  "#DBEFF2"
)

palette_diverging <- c(
  "#D68643",
  "#DB975E",
  "#E6B48E",
  "#EED2BE",
  "#FDF0D5",
  "#C5DBDF",
  "#98C6CD",
  "#66B1BC",
  "#1B9CAB"
)

################### IE GGPLOT DEFAULT THEME

theme_default <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      text = ggplot2::element_text(family = "Calibri", size = 10, color = "#525252"),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = "Georgia", size = 14, color = "#000000"),
      plot.subtitle = ggplot2::element_text(family = "Calibri", size = 12, color = "#9B9B9B"),
      axis.title = ggplot2::element_text(family = "Calibri", size = 10, face = "bold", color = "#9B9B9B"),
      axis.title.x.bottom = ggplot2::element_text(family = "Calibri", margin = margin(t = 10)),
      axis.title.y.left = ggplot2::element_text(family = "Calibri", margin = margin(r = 10)),
      axis.text.x = ggplot2::element_text(family = "Calibri", size = 9, color = "#9B9B9B"),
      axis.text.y = ggplot2::element_text(family = "Calibri", size = 9, color = "#525252"),
      legend.title = ggplot2::element_text(family = "Calibri", face = "bold"),
      legend.key.spacing.x = unit(0, "points"),
      legend.key = element_rect(linewidth = 0, color = "white"),
      legend.text = element_text(family = "Calibri", margin = margin(t = 2.5, r = 2.5, b = 2.5, l = 2.5)),
      plot.caption.position = "plot",
      plot.caption = ggplot2::element_text(family = "Calibri", size = 9, hjust = 0, vjust = 1, margin = margin(0)),
      strip.text = element_text(family = "Calibri", face = "bold", size = 11),
      strip.background = element_rect(fill = lightgrey(), color = lightgrey()),
      panel.spacing = unit(.75, "cm")
    )
}

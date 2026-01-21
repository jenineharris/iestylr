################### IE COLOR PALETTES

# R/iecolorsandtheme.R

#' Custom color palettes
#'
#' @export
ie_palettes <- list(
  palette_categorical = c(
    "#1B9CAB",
    "#993A53",
    "#F4C151",
    "#2A6092",
    "#D68643",
    "#64AEE6",
    "#D1A686",
    "#9ED3DB",
    "#8CA6BC"
  ),

  palette_sequential = c(
    "#1B9CAB",
    "#43A6B4",
    "#5EB0BC",
    "#75BBC5",
    "#8BC5CE",
    "#9FD0D7",
    "#B4DAE0",
    "#C7E4E9",
    "#DBEFF2"
  ),

  palette_diverging = c(
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
)

#' Discrete ggplot scale
#'
#' @param palette Character. One of "palette_diverging", "palette_sequential", "palette_categorical".
#' @export
scale_color_ie <- function(palette = "palette_diverging") {
  ggplot2::scale_color_manual(values = ie_palettes[[palette]])
}

#' Discrete ggplot fill scale
#'
#' @param palette Character. One of "palette_diverging", "palette_sequential", "palette_categorical".
#' @export
scale_fill_ie <- function(palette = "slate") {
  ggplot2::scale_fill_manual(values = ie_palettes[[palette]])
}

#' Custom ggplot theme
#'
#' @param base_size Numeric. Base font size.
#' @param base_family Character. Base font family.
#' @export
theme_iedefault <- function() {
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
      strip.background = element_rect(fill = 'lightgrey', color = 'lightgrey'),
      panel.spacing = unit(.75, "cm")
    )
}


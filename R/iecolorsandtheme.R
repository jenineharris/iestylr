################### IE COLOR PALETTES

# R/iecolorsandtheme.R

ie_palettes <- list(
  palette_categorical = c(
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

  palette_sequential = c(
    "Teal"      = "#1B9CAB",
    "Teal2"      = "#43A6B4",
    "Teal3"      = "#5EB0BC",
    "Teal4"      = "#75BBC5",
    "Teal5"      = "#8BC5CE",
    "Teal6"      = "#9FD0D7",
    "Teal7"      = "#B4DAE0",
    "Teal8"      = "#C7E4E9",
    "Teal9"      = "#DBEFF2"
  )

  palette_diverging = c(
    "Orange"    = "#D68643",
    "Orange2"    = "#DB975E",
    "Orange3"    = "#E6B48E",
    "Orange4"    = "#EED2BE",
    "Cream" = "#FDF0D5",
    "Teal4"      = "#C5DBDF",
    "Teal3"      = "#98C6CD",
    "Teal2"      = "#66B1BC",
    "Teal"      = "#1B9CAB"
  )
)


# Function to generate color palettes (discrete/continuous)
# Helper function to generate palettes
my_pal_gen <- function(palette = "palette_categorical", direction = 1, ...) {
  pal <- my_palettes[[palette]]
  if (direction >= 0) {
    pal <- pal
  } else {
    pal <- rev(pal)
  }

  grDevices::colorRampPalette(pal, ...)
}

#' Custom ggplot2 color scales
#'
#' @param palette Name of the color palette (e.g., "palette_categorical").
#' @param direction Direction of the color scale (1 for default, -1 for reversed).
#' @param discrete Logical, use a discrete color scale?
#' @param ... Additional arguments passed to ggplot2::scale_color_gradientn or ggplot2::scale_color_manual.
#' @export
scale_color_my_pal <- function(palette = "palette_categorical", direction = 1, discrete = TRUE, ...) {
  if (discrete) {
    ggplot2::scale_color_manual(values = my_palettes[[palette]], ...)
  } else {
    pal_function <- my_pal_gen(palette, direction)
    ggplot2::scale_color_gradientn(colors = pal_function(256), ...)
  }
}

#' Custom ggplot2 fill scales
#'
#' @param palette Name of the color palette (e.g., "palette_categorical").
#' @param direction Direction of the color scale (1 for default, -1 for reversed).
#' @param discrete Logical, use a discrete fill scale?
#' @param ... Additional arguments passed to ggplot2::scale_fill_gradientn or ggplot2::scale_fill_manual.
#' @export
scale_fill_my_pal <- function(palette = "palette_categorical", direction = 1, discrete = TRUE, ...) {
  if (discrete) {
    ggplot2::scale_fill_manual(values = my_palettes[[palette]], ...)
  } else {
    pal_function <- my_pal_gen(palette, direction)
    ggplot2::scale_fill_gradientn(colors = pal_function(256), ...)
  }
}


# Document and export the function with roxygen comments
#' My Package Color Scales
#'
#' @description A set of color scales for ggplot2 using the mypackage palettes.
#' @param palette Name of the color palette.
#' @param reverse Logical, reverse the direction of the palette.
#' @param ... Additional arguments passed to discrete_scale or continuous_scale.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(x = Species, fill = Species)) +
#'   geom_bar() +
#'   scale_fill_mypackage_d()
scale_fill_mypackage_d <- function(palette = "main", reverse = FALSE, ...) {
  ggplot2::discrete_scale("fill", "mypackage_d", mypackage_palettes(palette, reverse = reverse), ...)
}

#' @export
scale_color_mypackage_d <- function(palette = "main", reverse = FALSE, ...) {
  ggplot2::discrete_scale("color", "mypackage_d", mypackage_palettes(palette, reverse = reverse), ...)
}




#' IE GGPLOT DEFAULT THEME
#'
#' `theme_iedefault()` applies a default theme to match the student outcomes style guide. Further
#' changes can be made with subsequent calls to [ggplot2::theme()]. `theme_patch()` should be applied to
#' a "patch" that will be combined with other plots via patchwork. It specifies a smaller title than
#' `theme_iedefault()` (in this case the title will be the title of a panel rather than the whole plot) and
#' does not specify formatting for subtitles and captions. `theme_patchwork_annotate()` can be
#' passed to the `theme` argument of [patchwork::plot_annotation()] to ensure that the text of the
#' combined plot is properly styled consistent with `theme_default()`
#'
#' @return A `ggplot` theme object
#' @seealso [patchwork_annotate()] for a wrapper that automatically runs [patchwork::plot_annotation()]
#' and applies `theme_patchwork_annotate()`
#'
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
      strip.background = element_rect(fill = lightgrey(), color = lightgrey()),
      panel.spacing = unit(.75, "cm")
    )
}

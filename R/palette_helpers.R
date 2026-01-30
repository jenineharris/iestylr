#' Color variables
#'
#' Variables that conveniently store individual colors or shades of colors. Facilitates standardization
#' of colors and eliminates the need to keep track of hex values
#' @name colors
NULL

#' @rdname colors
#' @export
white <- "#ffffff"

#' @rdname colors
#' @export
black <- "#000000"

#' @rdname colors
#' @export
lightgray_bot <- "#eeeeee"

#' @rdname colors
#' @export
gray_bot <- "#c8c8c8"

#' @rdname colors
#' @export
semidarkgray_bot <- "#828282"

#' @rdname colors
#' @export
darkgray_bot <- "#3d3d3d"

#' @rdname colors
#' @export
lightgray <- "#D9D9D9"

#' @rdname colors
#' @export
gray <- "#9B9B9B"

#' @rdname colors
#' @export
darkgray <- "#525252"

#' @rdname colors
#' @export
teal <- "#1B9CAB"

#' @rdname colors
#' @export
burgundy <- "#993A53"

#' @rdname colors
#' @export
yellow <- "#F4C151"

#' @rdname colors
#' @export
darkblue <-"#2A6092"

#' @rdname colors
#' @export
orange <- "#D68643"

#' @rdname colors
#' @export
skyblue <- "#64AEE6"

#' @rdname colors
#' @export
tan <- "#D1A686"

#' @rdname colors
#' @export
mint <- "#9ED3DB"

#' @rdname colors
#' @export
bluegray <- "#8CA6BC"

#' @rdname colors
#' @export
cream <- "#FDF0d5"

#' @rdname colors
#' @export
lightorange <- "#E6B48E"

#' @rdname colors
#' @export
lightteal <- "#DBEFF2"

#' @rdname colors
#' @export
blue <- "#005f85"

#' @rdname colors
#' @export
turquoise <- "#67c8c7"

#' @rdname colors
#' @export
green <- "#789b4a"

#' @rdname colors
#' @export
yellow_bot <- "#ffcc00"

#' @rdname colors
#' @export
darkgreen <- "#173e3a"

#' @rdname colors
#' @export
red <- "#a51417"

#' @rdname colors
#' @export
lightblue <- "#749db5"

#' @rdname colors
#' @export
lightyellow <- "#fcd98f"

#' @rdname colors
#' @export
lightred <- "#ee7375"

#' @rdname colors
#' @export
blues <- c("#b8cdda", "#749db5", "#005f85", "#004461", "#002c40")

#' @rdname colors
#' @export
turquoises <- c("#d5efee", "#a9dedd", "#67c8c7", "#4d9695", "#234c4c")

#' @rdname colors
#' @export
greens <- c("#d5e1c9", "#acc393", "#789b4a", "#5a7438", "#3c4e25")

#' @rdname colors
#' @export
yellows <- c("#fdedc9", "#fcd98f", "#ffcc00", "#ba8f10", "#7c5f0b")

#' @rdname colors
#' @export
teals <- c("#1B9CAB", "#43A6B4", "#5EB0BC", "#75BBC5", "#8BC5CE", "#9FD0D7", "#B4DAE0", "#C7E4E9", "#DBEFF2")


#' Palettes
#'
#' IE palettes
#' @name palettes
NULL

##### OLD BOT palettes #########################################
# #' @rdname palettes
# #' @export
# pal_cat <- c(blue, turquoise, green, yellow_bot, darkgreen)
#
# #' @rdname palettes
# #' @export
# pal_cat2 <- pal_cat[1:2]
#
# #' @rdname palettes
# #' @export
# pal_cat2_gray <- c(gray_bot, blue)
#
# #' @rdname palettes
# #' @export
# pal_cat3 <- pal_cat[1:3]
#
# #' @rdname palettes
# #' @export
# pal_cat4 <- pal_cat[1:4]
#
# #' @rdname palettes
# #' @export
# pal_cat5 <- pal_cat[1:5]
###################################################################

#' @rdname palettes
#' @export
pal_cat <- c(teal, burgundy, yellow, darkblue, orange, skyblue, tan, mint, bluegray)

#' @rdname palettes
#' @export
pal_cat2 <- pal_cat[1:2]

#' @rdname palettes
#' @export
pal_cat2_gray <- c(gray, teal)

#' @rdname palettes
#' @export
pal_cat3 <- pal_cat[1:3]

#' @rdname palettes
#' @export
pal_cat4 <- pal_cat[1:4]

#' @rdname palettes
#' @export
pal_cat5 <- pal_cat[1:5]

#' @rdname palettes
#' @export
pal_cat6 <- pal_cat[1:6]

#' @rdname palettes
#' @export
pal_cat7 <- pal_cat[1:7]

#' @rdname palettes
#' @export
pal_cat8 <- pal_cat[1:8]

#' @rdname palettes
#' @export
pal_cat9 <- pal_cat


##### OLD BOT palettes #############################################
# #' @rdname palettes
# #' @export
# pal_seq <- blues
#
# #' @rdname palettes
# #' @export
# pal_seq2 <- c("#749db5", "#005f85")
#
# #' @rdname palettes
# #' @export
# pal_seq3 <- c("#b8cdda", "#749db5", "#005f85")
#
# #' @rdname palettes
# #' @export
# pal_seq4 <- c("#b8cdda", "#749db5", "#005f85", "#004461")
#
# #' @rdname palettes
# #' @export
# pal_seq5 <- c("#b8cdda", "#749db5", "#005f85", "#004461", "#002c40")
#####################################################################

#' @rdname palettes
#' @export
pal_seq <- teals

#' @rdname palettes
#' @export
pal_seq2 <- pal_seq[c(1, 9)]

#' @rdname palettes
#' @export
pal_seq3 <- pal_seq[c(1, 5, 9)]

#' @rdname palettes
#' @export
pal_seq4 <- pal_seq[c(1, 4, 6, 9)]

#' @rdname palettes
#' @export
pal_seq5 <- pal_seq[c(1, 3, 5, 7, 9)]

#' @rdname palettes
#' @export
pal_seq6 <- pal_seq[c(1, 3, 4, 6, 7, 9)]

#' @rdname palettes
#' @export
pal_seq7 <- pal_seq[c(1, 3:7, 9 )]

#' @rdname palettes
#' @export
pal_seq8 <- pal_seq[c(1:4, 6:9)]

#' @rdname palettes
#' @export
pal_seq9 <- pal_seq

##### OLD BOT palettes #############################################
#' @rdname palettes
#' @export
# pal_div2 <- c("#ffcc00", "#005f85")
#
# #' @rdname palettes
# #' @export
# pal_div3 <- c("#ffcc00", "#c8c8c8", "#005f85")
#
# #' @rdname palettes
# #' @export
# pal_div4 <- c("#ffcc00", "#fcd98f", "#749db5", "#005f85")
#
# #' @rdname palettes
# #' @export
# pal_div5 <- c("#ffcc00", "#fcd98f", "#c8c8c8", "#749db5", "#005f85")
##### OLD BOT palettes #############################################

#' @rdname palettes
#' @export
pal_div <- c(orange, "#DB975E", "#E6B48E", "#EED2BE", cream, "#C5DBDF", "#98C6CD", "#66B1BC", teal)

#' @rdname palettes
#' @export
pal_div_gray <- c(orange, "#DB975E", "#E6B48E", "#EED2BE", lightgray, "#C5DBDF", "#98C6CD", "#66B1BC", teal)

#' @rdname palettes
#' @export
pal_div2 <- pal_div[c(1, 9)]

#' @rdname palettes
#' @export
pal_div3 <- pal_div[c(1, 5, 9)]

#' @rdname palettes
#' @export
pal_div3_gray <- pal_div_gray[c(1, 5, 9)]

#' @rdname palettes
#' @export
pal_div4 <- pal_div[c(1, 3, 7, 9)]

#' @rdname palettes
#' @export
pal_div5 <- pal_div[c(1, 3, 5, 7, 9)]

#' @rdname palettes
#' @export
pal_div5_gray <- pal_div_gray[c(1, 3, 5, 7, 9)]

#' @rdname palettes
#' @export
pal_div6 <- pal_div[c(1, 3, 4, 6, 7, 9)]

#' @rdname palettes
#' @export
pal_div7 <- pal_div[c(1, 3, 4, 5, 6, 7, 9)]

#' @rdname palettes
#' @export
pal_div7_gray <- pal_div_gray[c(1, 3, 4, 5, 6, 7, 9)]

#' @rdname palettes
#' @export
pal_div8 <- pal_div[c(1:4, 6:9)]

#' @rdname palettes
#' @export
pal_div9 <- pal_div

#' @rdname palettes
#' @export
pal_div9_gray <- pal_div_gray

#' @rdname palettes
#' @export
pal_warn2 <- c(lightgray, lightorange)

#' @rdname palettes
#' @export
pal_warn3 <- c(lightgray, lightorange, orange)




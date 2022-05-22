library(showtext)
font_add_google(name="Source Sans Pro", family="sourcesans")
font_add_google(name="Source Serif Pro", family="sourceserif")
showtext_auto()
showtext_opts(dpi = 220)

theme_custom <- function() {
  theme(
    plot.margin = unit(c(1.2,1,1,1), "cm"),
    text=element_text(
      family="sourcesans",
      size=14,
    ),
    plot.title = element_textbox_simple(
      size=24,
      margin = margin(0, 0, 10, 0),
      family="sourceserif"
    ),
    plot.subtitle = element_textbox_simple(
      margin = margin(0, 0, 20, 0),
      family="sourceserif",
    ),
    plot.caption = element_markdown(
      color="#777777",
    ),
    axis.title = element_markdown(
      color="#777777",
      size=12,
    )
  )
}
library(tidyverse)
library(ggtext)

source('./theme.R')
source('./export.R')

# Load data
library(readxl)
disponible <- read_excel('./data_input/movimientos.xlsx', skip=3) %>%
  select(fecha=Fecha, total=Disponible) %>% 
  distinct(fecha, .keep_all = TRUE)


# Plot it
gg <- disponible %>%
  ggplot(
    aes(y=total, x=fecha),
  ) +
  geom_line(
    size=0.5,
    lineend='round',
    color="steelblue"
  ) +
  # geom_smooth(method = "loess") +
  theme_minimal() +
  theme_custom() +
  ylab("Disponible") +
  xlab('') +
  # scale_color_manual(values=party_colors) +
  labs(
    title="<strong>Lorem</strong>",
    subtitle='Ipsum',
    # caption=ggcaption,
  )

# Generate image
export(gg, './output/images/disponible.jpeg')

# Show image
gg


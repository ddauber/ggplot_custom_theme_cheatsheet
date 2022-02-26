# Plot for ggplot custom theme cheatsheet
# Author: Daniel Dauber
# Last updated: 2022-02-26

# Create a plot
library(tidyverse)
library(ragg)

mtcars %>%
  ggplot(aes(x = as_factor(gear),
             y = mpg,
             fill = as_factor(gear))) +
  geom_col() +
  facet_wrap(facets = ~ as_factor(carb)) +
  labs(title = "plot.title | plot.title.position",
       subtitle = "plot.subtitle",
       caption = "plot.caption | plot.caption.position",
       x = "axis.title.x",
       y = "axis.title.y",
       fill = "legend.title",
       tag = "plot.tag") +

  # Custom theme

  theme(
    aspect.ratio = 9/16,                                    # aspect ratio

    # Plot
    plot.title.position = "plot",                           # plot title position
    plot.caption.position = "panel",                        # plot caption position

    # Axis
    axis.title.x = element_text(colour = "#66CC77"),        # axis labels
    axis.title.y = element_text(colour = "#66CC77"),        # axis labels

    axis.text.x = element_text(colour = "#A6CEFF"),         # axis ticks text
    axis.text.y = element_text(colour = "#A6CEFF"),         # axis ticks text

    axis.ticks.x = element_line(colour = "#66CC77"),        # axis ticks indicators
    axis.ticks.y = element_line(colour = "#66CC77"),        # axis ticks indicators
    axis.ticks.length.x = unit(0.5, "cm"),                  # axis ticks indicators length
    axis.ticks.length.y = unit(0.5, "cm"),                  # axis ticks indicators length

    axis.line.x = element_line(colour = "#FF6666"),         # axis line
    axis.line.y = element_line(colour = "#FF6666"),         # axis line

    # Legend
    legend.title = element_text(colour = "#CCCCCC"),        # legend title
    legend.title.align = 0,                                 # alignment of legend title

    legend.position = "bottom",                             # legend position
    legend.direction = "horizontal",                        # legend direction
    legend.box.spacing = unit(1, "cm"),                     # spacing plot vs legend

    legend.background = element_rect(fill = "#000000",      # legend background
                                     color = "#FF0000"),    # legend border

    legend.margin = margin(t = 0.5,                         # legend margin top
                           r = 0.5,                         # legend margin right
                           b = 0.5,                         # legend margin bottom
                           l = 0.5,                         # legend margin left
                           unit = "cm"),                    # legend margin units

    legend.spacing.x = unit(0.5, "cm"),                     # spacing legend tiles vs. label
    legend.spacing.y = unit(0.5, "cm"),                     # spacing legend title vs. key

    legend.text = element_text(colour = "#FFFFFF"),         # text of legend key
    legend.key = element_rect(colour = "#FFFFFF"),          # border colour of legend key
    legend.key.size = unit(0.5, "cm"),                      # size of legend key
    legend.text.align = 0,                                  # alignment of legend text


    panel.grid.major.x = element_line(colour = "#00FF00"),  # panel grid lines major x
    panel.grid.major.y = element_line(colour = "#00FF00"),  # panel grid lines major y
    panel.grid.minor.x = element_line(colour = "#00FF00"),  # panel grid lines minor x
    panel.grid.minor.y = element_line(colour = "#00FF00"),  # panel grid lines minor y

    # Panel
    panel.background = element_rect(colour = "#FF6666",     # panel border colour
                                    fill = "#E380F2"),      # panel background colour

    panel.border = element_rect(colour = "#FF0000",         # panel border colour
                                fill = NA),
    panel.spacing.x = unit(3, "cm"),                        # spacing between facet plots x
    panel.spacing.y = unit(3, "cm"),                        # spacing between facet plots y

    # Plot
    plot.background = element_rect(fill = "#FFE770",        # background colour of entire plot
                                   colour = "#333333"),     # border color around entire plot

    plot.tag = element_text(colour = "#CCCCCC",             # plot tag colour
                            size = 8),                      # plot tag text size
    plot.tag.position = "topright",                         # plot tag position

    # Plot margins can change the aspect ratio of your plot!
    plot.margin = margin(t = 9/5,                           # plot margin top
                         r = 16/5,                          # plot margin right
                         b = 9/5,                           # plot margin bottom
                         l = 16/5,                          # plot margin left
                         unit = "cm"),                      # plot margin units
    # Facets
    strip.background.x = element_rect(fill = "#000000"),
    strip.background.y = element_rect(fill = "#000000"),
    strip.text.x = element_text(colour = "#CCCCCC"),
    strip.text.y = element_text(colour = "#FFFFFF")
  )

  # Save plot
  # ggsave(plot = plot,
  #        filename = "ggplot2_custom_theme_cheatsheet.png",
  #        dpi = 300,
  #        device = "ragg",
  #        units = "cm",
  #        width = 1920/200,
  #        height = 1080/200)
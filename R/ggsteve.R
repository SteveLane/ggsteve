################################################################################
################################################################################
## Title: Theming for ggplot
## Author: Steve Lane
## Date: Thursday, 08 June 2017
## Synopsis: Creates a theme similar to 538. Requires ggplot2 of course.
## Time-stamp: <2017-06-08 13:41:54 (slane)>
################################################################################
################################################################################
theme_steve <- function(base_size = 12, base_family = "mono"){
    thm <- theme_grey(base_size = base_size, base_family = base_family)
    for (i in names(thm)) {
        if ("colour" %in% names(thm[[i]])) {
            thm[[i]]["colour"] <- list(NULL)
        }
        if ("fill" %in% names(thm[[i]])) {
            thm[[i]]["fill"] <- list(NULL)
        }
    }
    thm +
        theme(
            line = element_line(colour = "black"),
            panel.border = element_rect(fill = NA),
            rect = element_rect(fill = "#F2F2F2", linetype = 0, colour = NA),
            text = element_text(colour = "#2B4450"),
            axis.title = element_blank(),
            axis.text = element_text(),
            axis.ticks = element_blank(),
            axis.line = element_blank(),
            legend.background = element_rect(colour = NA),
            legend.position = "bottom",
            legend.direction = "horizontal",
            legend.box = "vertical",
            panel.grid = element_line(colour = NULL),
            panel.grid.major = element_line(colour = "#FEFEFE"),
            panel.grid.minor = element_blank(),
            plot.title = element_text(hjust = 0, size = rel(1.25),
                                      face = "bold"),
            plot.margin = unit(c(1, 1, 1, 1), "lines"),
            strip.background = element_rect())
}
################################################################################
################################################################################

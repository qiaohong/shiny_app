make_plot <- function(data, year){
  p <- ggplot() +
    geom_polygon(
      data=data,
      aes_string(x="long", y="lat", group = "group", fill=year),
      colour="white"
    ) +
    theme_bw() +
    theme(panel.border = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.line=element_blank(),
          axis.text.x=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks=element_blank(),
          axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          legend.position = "bottom"
    ) +
    scale_fill_gradient2() +
    labs(fill = "% Dem - % Rep" ,
         title = "Election results: Dem v.s. Rep votes", x="", y="")
  return(p)
  
}
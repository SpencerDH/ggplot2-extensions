overlay <- function(plot, plotlist) {
  if (length(plotlist) > 1) {
    p <- plotlist[1]
    plotlist <- plotlist[-1]
    plot <- plot + p
    overlay(plot, plotlist)
  }
  else if (length(plotlist) == 1) {
    plot <- plot + plotlist[1]
    return(plot)
  }
}
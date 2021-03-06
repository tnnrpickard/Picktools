#' A function to flatten a list of data frames to a single dataframe
#'@param input_list as input list of data frames
#'@return output_frame as data frame with rows indexed to original list position
#'@export
#'@examples
#'flattenList(nba_players)

flattenList <- function(input_list) {
  output_frame <- data.frame()
  for (i in 1:length(input_list)) {
    output_frame <- rbind(output_frame, cbind(input_list[[i]], i))
  }
  return(output_frame)
}

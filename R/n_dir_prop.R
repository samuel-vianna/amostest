#' @title Alocação diretamente proporcional
#'
#' @name n_dir_prop 
#'
#' @description Alocação diretamente proporcional
#'
#' @export
n_dir_prop <- function(dados, p ) {
  
  aux <- teste[,1] * p
  
  return(aux)
}
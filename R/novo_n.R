#' @title Corrige o tamanho da amostra
#'
#' @name novo_n 
#'
#' @description Corrige o tamanho da amostra
#'
#'
#' @export
novo_n <- function(n, N){
  aux <- n / (1 + ((n - 1)/ N) )
  return(aux)
}

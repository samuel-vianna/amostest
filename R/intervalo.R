#' @title Calcula o intervalo de confiança
#'
#' @name intervalo 
#'
#' @description Calcula o intervalo de confiança para a média
#'     com base nos valores amostrais e nível de significância
#'
#' @param mean Média amostral
#' @param p Valor da probabilidade calculada (z ou t)
#' @param sigma Desvio padrão 
#'
#'
#'
#' @export
intervalo <- function(media, z, sigma){
  aux <- z * sigma
  
  return(media + c(-1,1)*aux)
}
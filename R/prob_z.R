#' @title Calcula a Probabilidade de z
#'
#' @name prob_z
#'
#' @description Calcula a probabilidade bicaudal de z estar entre os valores críticos de um certo alpha,
#'    considerando uma distribuição normal.
#'
#' @param alpha N�vel de significância desejado
#' @param mean média da distribuição (por padrão, mean = 0)
#' @param sd desvio padrão da distribuição (por padrão, sd = 1)
#'
#'
#' @examples
#' alpha <- 0.05
#' prob_z(alpha)
#'
#'
#' @export
prob_z <- function(alpha, mean = 0, sd = 1){
  aux <- qnorm(1 - alpha/2, mean = mean, sd = sd)
  return(aux)
}
#' @title Calcula o tamanho das amostras para a partilha de neyman
#'
#' @name n_neyman_partes
#'
#' @description Calcula o tamanho das amostras de cada 
#'              estrato para a partilha de neyman
#'
#' @export
n_neyman_partes <- function(dados, n){
  
  aux_d <- 0
  for (i in 1:nrow(dados)){
    
    d <- dados[i,1] * sqrt(dados[i,3])
    
    aux_d <- aux_d + d
  }
  
  for (i in 1:nrow(dados)){
    texto <- paste0("Estrato ", i)
    
    k <- dados[i,1] * sqrt(dados[i,3])
    
    nh <- n * k/aux_d
    
    print(texto)
    print(nh)
    
  }
}
#' @title Calcula o tamanho das amostras para a partilha proporcional
#'
#' @name n_prop_partes
#'
#' @description Calcula o tamanho das amostras para a partilha proporcional
#'
#'
#' @export

n_prop_partes <- function(dados, n){
  
  for (i in 1:nrow(dados)){
    texto <- paste0("Estrato ", i)
    
    nh <- n * dados[i,1] /sum(dados[,1])
    
    print(texto)
    print(nh)
    
  }
}
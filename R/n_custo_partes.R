#' @title Partes - alocação por custo
#'
#' @name n_custo_partes 
#'
#' @description Partes - alocação por custo
#'
#' @export
n_custo_partes <- function(dados,n){
  
  aux_d <- 0
  for (i in 1:nrow(dados)){
    
    d <- ( dados[i,1] * sqrt(dados[i,3]) ) / sqrt(dados[i,4])
    
    aux_d <- aux_d + d
  }
  
  
  for (i in 1:nrow(dados)){
    
    texto <- paste0("Estrato ", i)
    
    k <- ( dados[i,1] * sqrt(dados[i,3]) ) / sqrt(dados[i,4])
    
    nh <- n * k/aux_d
    
    print(texto)
    print(nh)
    
  }
  
}
quadrats <- read.csv("C:/Users/natha/OneDrive/Bureau/quadrats.txt", sep=";")
View(quadrats)
etats_0<-matrix(nrow=nrow(quadrats),ncol=3)
colnames(etats_0)=c('bor.x','bor.y','états')
etats_0[,1]<-quadrats$borx
etats_0[,2]<-quadrats$bory




for(n in 1:nrow(etats_0))  {
  
  if (sum(quadrats[n,c('abba','piru')])>0) {
    
    if(sum(quadrats[n,c('acsa','acpe','beal','fagr')])>0) {
      etats_0[n,3] = "M"
    }      
    
    else {
      etats_0[n,3]= "B"
    }
  }
  
  else if(sum(quadrats[n,c('acsa','acpe','beal','fagr')])>0) {
    etats_0[n,3]= "T"
  }
  
  else {
    etats_0[n,3]= "R"
  }

}
n=n+1
View(etats_0)



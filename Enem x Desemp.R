library(tidyverse)
library(ggplot2)
library(ggpmisc)
library(scales)


Enem_x_Desemprego %>% 
  ggplot(aes(x=Ano, y= `Número de inscritos (milhões)`, color="Inscritos no ENEM"))+
  geom_line()+
  geom_line(aes(y=`Taxa de desemprego (%)`*1000000, color="Desemprego"))+
  scale_y_continuous(sec.axis = sec_axis(~./1000000))+
  scale_x_continuous(breaks = seq(2004,2022,3))+
  labs(title = 'Correlação inscritos do ENEM x taxa de desemprego',
       color='Índices')
  
  
  
  


library(tidyverse)
library(ggplot2)
library(ggpmisc)
library(scales)


Enem %>% 
  ggplot(aes(x=Ano, y=`Número de inscritos (milhões)`))+
  geom_line()+
  geom_smooth(method = 'lm',formula =y~poly(x,2,raw=TRUE) )+
  scale_x_continuous(breaks = seq(2004,2022,3))+
  scale_y_continuous('Número de inscritos (milhões)', labels = label_number(scale_cut = cut_short_scale()))+
  geom_point(size=2.5)+
  labs(title = 'Número de inscritos do ENEM',
       subtitle = 'A partir do ano em que o ENEM passou a dar acesso ao ensino superior.')
  
  
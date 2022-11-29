library(tidyverse)
library(ggplot2)
library(ggpmisc)
library(scales)

Desemprego_no_Brasil %>% 
  ggplot(aes(x=Ano, y=`Taxa de desemprego (%)`))+
  geom_line()+
  geom_smooth(method = 'lm',formula =y~poly(x,2,raw=TRUE),
              col='red')+
  scale_x_continuous(breaks = seq(2004,2022,3))+
  geom_point(size=2.5)+
  labs(title = 'Taxa de desemprego no Brasil',
       subtitle = 'A partir do ano em que o ENEM passou a dar acesso ao ensino superior.')

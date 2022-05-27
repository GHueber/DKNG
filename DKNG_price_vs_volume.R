library(tidyverse)
library(ggplot2)
library(RColorBrewer)
library(extrafont)
library(ggeasy)
library(viridis)
library(scales)


read.csv("/Users/gushueber/DKNG(2).csv")
DKNG2 <- read.csv("/Users/gushueber/DKNG(2).csv")
str(DKNG2)
ggplot(DKNG2, aes(Volume, Open.Close)) +
  geom_point(size = 2, shape = 5, color = "yellow") +
  geom_smooth(method = "lm", se = FALSE, color = "orange") +
  geom_smooth(se = FALSE, color = "red") + labs( 
    title = "Volume's Effect on DKNG's Daily Change in Price",
    x = "Daily Volume",
    y = "Open/Close Price Difference",
    size = 3) +
  theme(text=element_text(size=14, family="serif")) +
  ggeasy::easy_center_title() + 
  theme(
    panel.background = element_rect(fill = "black",
                                    colour = "black"),
    panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                    colour = "darkgray"), 
    panel.grid.minor = element_line(size = 0.5, linetype = 'solid',
                                    colour = "darkgray")
  )
  
 

read.csv("/Users/gushueber/DKNG3.csv")
DKNG3 <- read.csv("/Users/gushueber/DKNG3.csv")
colnames(DKNG3)
ggplot(DKNG3, aes(Volume, High.Low)) +
  geom_point(size = 2, shape = 7, color = "Blue") +
  geom_smooth(method = "lm", se = FALSE, color = "orange") +
  geom_smooth(se = FALSE, color = "Yellow") + labs( 
    title = "Volume's Effect on DKNG's Daily Change in Price",
    x = "Daily Volume",
    y = "High/Low Price Difference",
    size = 3) +
  theme(text=element_text(size=14, family="serif")) +
  ggeasy::easy_center_title() + 
  theme(
    panel.background = element_rect(fill = "lightblue",
                                    colour = "lightblue"),
    panel.grid.major = element_line(size = 0.25, linetype = 'solid',
                                    colour = "gray"), 
    panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                    colour = "gray") 
  ) 



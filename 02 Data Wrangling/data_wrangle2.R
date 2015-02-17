data_wrangle_vis2 <- df  %>%  group_by(SAMPLELOCATION, ISOTOPENAME) %>% summarise(records = n()) %>%  ggplot(aes( x=SAMPLELOCATION, fill=SAMPLELOCATION)) + geom_bar(stat = "bin", width = 0.5)

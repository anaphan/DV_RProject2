p1 <- ggplot (df, aes (x = ISOTOPENAME, fill = ISOTOPENAME)) + geom_histogram ()
p1 + facet_wrap (~UNITS)

albanyemp <- subset(df, SAMPLELOCATION == "ALBANY, EMPIRE STATE PLAZA")
albanyemp
head (albanyemp)
p2 <- ggplot (albanyemp, aes (x = ISOTOPENAME, fill = ISOTOPENAME)) + geom_histogram ()
p2 + facet_wrap (~UNITS)

pci <- subset (df, UNITS == "pCi/L")
p3 <- ggplot (pci, aes (x = , y = )) + geom_ ()

data_wrangle_vis1 <- df  %>% group_by(SAMPLETYPE, SAMPLELOCATION, ISOTOPENAME)  %>% summarise(Picocurries_per_Liter = mean(GRAPHVALUE))  %>% ggplot(aes(x=SAMPLETYPE, y=Picocurries_per_Liter, color = ISOTOPENAME)) + geom_point() + facet_wrap(~SAMPLELOCATION)

data_wrangle_vis2 <- df  %>%  group_by(SAMPLELOCATION, ISOTOPENAME) %>% summarise(records = n()) %>%  ggplot(aes( x=SAMPLELOCATION, fill=SAMPLELOCATION)) + geom_bar(stat = "bin", width = 0.5)

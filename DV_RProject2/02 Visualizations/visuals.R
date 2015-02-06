p1 <- ggplot (df, aes (x = ISOTOPENAME, fill = ISOTOPENAME)) + geom_histogram ()
p1 + facet_wrap (~UNITS)

albanyemp <- subset(df, SAMPLELOCATION == "ALBANY, EMPIRE STATE PLAZA")
albanyemp
head (albanyemp)
p2 <- ggplot (albanyemp, aes (x = ISOTOPENAME, fill = ISOTOPENAME)) + geom_histogram ()
p2 + facet_wrap (~UNITS)

pci <- subset (df, UNITS == "pCi/L")
p3 <- ggplot (pci, aes (x = , y = )) + geom_ ()

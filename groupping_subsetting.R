

library(readxl)
air_france <- read_xls('Air France Case Spreadsheet Supplement.xls',
                       sheet = 'DoubleClick')


summary(air_france)
air_france$Amount <- as.numeric(gsub("[\\$,]", "", air_france$Amount))
air_france$`Total Cost` <- as.numeric(gsub("[\\$,]", "", air_france$`Total Cost`))

publisher_id <- unique(air_france$`Publisher ID`)
publisher_name <- unique(air_france$`Publisher Name`)
bid_strategy <- unique(air_france$`Bid Strategy`)

yahoo_us_sub <- subset(air_france, air_france$`Publisher ID` == 'K2615')
msn_global_sub <- subset(air_france, air_france$`Publisher ID` == 'K2003')
google_global_sub <- subset(air_france, air_france$`Publisher ID` == 'K1175')
over_global_sub <- subset(air_france, air_france$`Publisher ID` == 'K1123')
google_us_sub <- subset(air_france, air_france$`Publisher ID` == 'K435')
over_us_sub <- subset(air_france, air_france$`Publisher ID` == 'K1122')
msn_us_sub <- subset(air_france, air_france$`Publisher ID` == 'K2966')


summary(yahoo_us_sub)
summary(msn_global_sub)
summary(google_global_sub)
summary(over_global_sub)
summary(google_us_sub)
summary(over_us_sub)
summary(msn__us_sub)

campaign_name <- unique(air_france$Campaign)



# Task 2 #
msn_us_graph <- subset(msn_us_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(msn_us_graph, main ='MSN US')
msn_global_graph <- subset(msn_global_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(msn_global_graph, main ='MSN GLOBAL')
yahoo_us_graph <- subset(yahoo_us_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(yahoo_us_graph, main = 'YAHOO US')
google_global_graph <- subset(google_global_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(google_global_graph, main = 'GOOGLE GLOBAL')
google_us_graph <- subset(google_us_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(google_us_graph, main = ' GOOGLE US')
over_global_graph <- subset(over_global_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(over_global_graph, main = 'OVERTURE GLOBAL')
over_us_graph <- subset(over_us_sub, select = c("Amount", "Total Volume of Bookings","Total Cost","Clicks"))
plot(over_us_graph, main ='OVERTURE US')


### Part 3. subseting match type by channals
# US 
YU_standard <- subset(yahoo_us_sub, yahoo_us_sub$`Match Type` == 'Standard')
YU_broad <- subset(yahoo_us_sub, yahoo_us_sub$`Match Type` == 'Broad')
YU_advanced <- subset(yahoo_us_sub, yahoo_us_sub$`Match Type` == 'Advanced')

GU_standard <- subset(google_us_sub, google_us_sub$`Match Type` == 'Standard')
GU_broad <- subset(google_us_sub, google_us_sub$`Match Type` == 'Broad')
GU_advanced <- subset(google_us_sub, google_us_sub$`Match Type` == 'Advanced')

OU_standard <- subset(over_us_sub, over_us_sub$`Match Type` == 'Standard')
OU_broad <- subset(over_us_sub, over_us_sub$`Match Type` == 'Broad')
OU_advanced <- subset(over_us_sub, over_us_sub$`Match Type` == 'Advanced')

MU_standard <- subset(msn__us_sub, msn__us_sub$`Match Type` == 'Standard')
MU_broad <- subset(msn__us_sub, msn__us_sub$`Match Type` == 'Broad')
MU_advanced <- subset(msn__us_sub, msn__us_sub$`Match Type` == 'Advanced')

# Global 
GG_standard <- subset(google_global_sub, google_global_sub$`Match Type` == 'Standard')
GG_broad <- subset(google_global_sub, google_global_sub$`Match Type` == 'Broad')
GG_advanced <- subset(google_global_sub, google_global_sub$`Match Type` == 'Advanced')

OG_standard <- subset(over_global_sub, over_global_sub$`Match Type` == 'Standard')
OG_broad <- subset(over_global_sub, over_global_sub$`Match Type` == 'Broad')
OG_advanced <- subset(over_global_sub, over_global_sub$`Match Type` == 'Advanced')

MG_standard <- subset(msn_global_sub, msn_global_sub$`Match Type` == 'Standard')
MG_broad <- subset(msn_global_sub, msn_global_sub$`Match Type` == 'Broad')
MG_advanced <- subset(msn_global_sub, msn_global_sub$`Match Type` == 'Advanced')

# Means of each channal of each match type
summary(YU_standard)
summary(YU_broad)
summary(YU_advanced)

summary(GU_standard)
summary(GU_broad)
summary(GU_advanced)

summary(OU_standard)
summary(OU_broad)
summary(OU_advanced)

summary(MU_standard)
summary(MU_broad)
summary(MU_advanced)

summary(GG_standard)
summary(GG_broad)
summary(GG_advanced)

summary(OG_standard)
summary(OG_broad)
summary(OG_advanced)

summary(MG_standard)
summary(MG_broad)
summary(MG_advanced)


sub_standard <- subset(air_france, air_france$`Match Type` == 'Standard')
sub_broad <- subset(air_france, air_france$`Match Type` == 'Broad')
sub_advanced <- subset(air_france, air_france$`Match Type` == 'Advanced')

summary(sub_standard)
summary(sub_broad)
summary(sub_advanced)










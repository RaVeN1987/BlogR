
# finalData <- data.frame()
# for (i in 1:length(mysheets)){
#   if (nrow(finalData) == 0 ) {
#     data <- read_excel("example.xlsx", sheet = names(mysheets[i]) )
#     finalData <- data
#   }else{
#     dataNext <- read_excel("example.xlsx", sheet = names(mysheets[i]) )
#     finalData <-  cbind(finalData,  dataNext)
#   }
# }


# for (i in levels(NumberOfCluster)) {
#   x <-  subset(ShopsData, ShopsData$cluster == i)
#   assign( paste("Cluster", i, sep = " "), x )
#   Name <- paste("Cluster", i, sep = " ")
#   AverageTickets <- sum(mean(x$Tiquets))
#   AverageFact <- sum(mean(x$Facturation))
#   NewData <- data.frame("Cluster" = Name, "Average Tickets" = AverageTickets, "Average Fact" = AverageFact)
#   AverageDataCluster <- rbind(AverageDataCluster,NewData)
#     
#   
# }


for (i in i:nrow(AverageDataCluster)) {
  TotalTicket <- sum(AverageDataCluster$Average.Tickets)
  TotalFact <- sum(AverageDataCluster$Average.Tickets)
  if (AverageDataCluster$Average.Tickets[i] < TotalTicket / 3) {
    AverageDataCluster$Tickets[i] <- "Low"
  }else if (AverageDataCluster$Average.Tickets[i] > TotalTicket / 3 & AverageDataCluster$Average.Tickets[i] < TotalTicket / 2){
    AverageDataCluster$Tickets[i] <- "Medium"
  }else {
    AverageDataCluster$Tickets[i] <- "High"
    
  }
  
}

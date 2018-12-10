for (i in 1:nrow(AverageDataCluster)) {
  TotalTicket <- sum(AverageDataCluster$Average.Tickets)
  TotalFact <- sum(AverageDataCluster$Average.Tickets)
  if (AverageDataCluster$Average.Tickets[i] < TotalTicket / 10) {
    AverageDataCluster$Tickets[i] <- "Low"
  }else if (AverageDataCluster$Average.Tickets[i] > TotalTicket / 10 & AverageDataCluster$Average.Tickets[i] < TotalTicket / 5){
    AverageDataCluster$Tickets[i] <- "Medium"
  }else {
    AverageDataCluster$Tickets[i] <- "High"
    
  }
  
}
for (i in 1:nrow(AverageDataCluster)) {
  TotalTicket <- sum(AverageDataCluster$Average.Tickets)
  TotalFact <- sum(AverageDataCluster$Average.Tickets)
  if (AverageDataCluster$Average.Tickets[i] < TotalTicket / 10) {
    AverageDataCluster$Tickets[i] <- "Low"
  }else if (AverageDataCluster$Average.Tickets[i] > TotalTicket / 10 & AverageDataCluster$Average.Tickets[i] < TotalTicket / 5){
    AverageDataCluster$Tickets[i] <- "Medium"
  }else {
    AverageDataCluster$Tickets[i] <- "High"
    
  }
  
}

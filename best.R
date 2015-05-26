best <- function(state, outcome) {
  outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
  statByState<-outcome[outcome$State == state,]
  l<-dim(statByState)[1]
  if(l == 0) stop("invalid state")
  #temp1<-statByState[,varlist(statByState,pattern="^Hospital")]
  temp1<-statByState[, grepl("^Hospital.30.Day.Death..Mortality|Hospital.Name", names(statByState))]
  #temp1<-head(statByState[,c(colnames(statByState)[grep("Hospital 30-Day Death",colnames(statByState))])])
  ptrn<-paste("Hospital.Name|", outcome, sep = "")
  temp2<-temp1[, grepl(ptrn, names(temp1))]
  temp2
}


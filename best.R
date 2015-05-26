best <- function(state, outcome) {
  outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
  statByState<-outcome[outcome$State == state,]
  l<-dim(statByState)[1]
  if(l == 0) stop("invalid state")
  #temp1<-statByState[,varlist(statByState,pattern="^Hospital")]
  temp1<-statByState[, grepl("^Hospital.30.Day.Death..Mortality|Hospital.Name", names(statByState))]
  #temp1<-head(statByState[,c(colnames(statByState)[grep("Hospital 30-Day Death",colnames(statByState))])])
  names(temp1)<-c("Name","heart attack","heart failure","pneumonia")
  temp1["pneumonia"]<-as.numeric(temp1["pneumonia"])
    temp1<-subset[, min(temp1["pneumonia"])]
  temp1
}


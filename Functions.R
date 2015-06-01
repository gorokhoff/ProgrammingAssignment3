readReport<-function(path){
  report<-read.csv(path, header = TRUE, sep = ";",dec = ",")
  nms<-c("Date","p","r","ConfirmDate","Name","Ticker","Type","Count","Price","Sum","n","BrokerRake","StokRake","IdDeal","xr","rs","ar","ca","cm")
  names(report)<-nms
  good<-c("Date","ConfirmDate","Name","Ticker","Type","Count","Price","Sum","BrokerRake","StokRake")
  report<-report[,good]
  report
}
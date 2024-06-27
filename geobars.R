# Inserting data 
ODI <- data.frame(match=c("M-1","M-2","M-3","M-4"), 
                  runs=c(67,37,74,10)) 

# Assigning default and different colors to bar plot 
perf <-ggplot(data=ODI, aes(x=match, y=runs,fill=match))+ 
  geom_bar(stat="identity") 
perf 

ggplot(data=ODI, aes(x=match, y=runs,fill=match))+ 
  geom_bar(stat="identity") 

ggplot(covid_data2, aes(x=states, y=total_confirmed, fill=states))+ 
  geom_bar(stat="identity") 

ggplot(covid_data2, aes(x=states, y=total_confirmed))+ 
  geom_bar(stat="identity", fill="darkgreen")

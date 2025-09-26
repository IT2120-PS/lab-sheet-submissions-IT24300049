#Lab sheet-08
data<-read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

popmn<-mean(Nicotine)
popmn
popvar<-var(Nicotine)
popvar

samples<-c()
n<-c()

#The “For” loop will be used to create and assign samples of size 5 for “samples” variable created above.
#Using “sample” command we can draw a random sample either with replacement or without replacement.
#By making “replace” argument as TRUE we can create samples with replacement.
for(i in 1:25){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
#Assign column names for each sample created. Names have stored earlier under “n” variable.
colnames(samples)=n
#Using “apply” command we can ask to calculate any function such as mean, variance, etc. row wise or
#column wise in a matrix.
#Here, considering the second argument as “2” we can calculate either mean/variance column wise
#which stored earlier in “samples” variable which is a matrix.
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

s.means
s.vars

samplemean<-mean(s.means)
samplevars<-var(s.means)

samplemean
samplevars

popmn
samplemean


truevar=popvar/5
samplevars

truevar
samplevars





#Exercise Answers:
setwd("C:\\Users\\it24300049\\Desktop\\IT24300049")

data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popmn
popvar<-var(Weight.kg.)
popvar


# Question 02
#First create null vectors to store sample data sets.

samples<-c()
n<-c()

#The “For” loop will be used to create and assign samples of size 5 for “samples” variable created above.
#Using “sample” command we can draw a random sample either with replacement or without replacement.
#By making “replace” argument as TRUE we can create samples with replacement.
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
#Assign column names for each sample created. Names have stored earlier under “n” variable.
colnames(samples)=n
#Using “apply” command we can ask to calculate any function such as mean, variance, etc. row wise or
#column wise in a matrix.
#Here, considering the second argument as “2” we can calculate either mean/variance column wise
#which stored earlier in “samples” variable which is a matrix.
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

s.means
s.vars

samplemean<-mean(s.means)
samplevars<-var(s.means)

samplemean
samplevars

popmn
samplemean
#Reason for the difference:
#The population mean is a fixed value, or a constant, that represents the true average of the entire population.
#A sample mean is a variable value that depends on which specific individuals are randomly selected from the population. 
#Because each sample is different, its mean will also differ from the population mean to some degree.


truevar=popvar/6
samplevars

truevar
samplevars
#Reason for the difference:
#The population variance,is the true, fixed measure of dispersion for the entire population.
#The sample variance,is an estimate of the population variance based on a smaller subset of the population.

















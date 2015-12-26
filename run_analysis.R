#Load Useful Packages. Install any missing packages using install.packages("package_name")
library(data.table)
library(dplyr)
library(downloader)

#Change this to your working directory
setwd("Documents/Coursera Data Science/Cleaning Data")

#Download and Unzip Raw Data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ", destfile="rawdata.zip")
unzip("rawdata.zip", exdir=".")

#Variable names
varnames<-read.table("UCI HAR Dataset/features.txt")

#Assemble Test Set
test<-read.table("UCI HAR Dataset/test/X_test.txt")
test_lab<-read.table("UCI HAR Dataset/test/y_test.txt")
sub<-read.table("UCI HAR Dataset/test/subject_test.txt")

names(test)<-varnames$V2

test_r<-cbind(test_lab, test)
test_r<-setDT(test_r)
setnames(test_r, old="V1", new="ActivityLabel")
test_r<-cbind(sub, test_r)
setnames(test_r, old="V1", new="SubjectLabel")
test_r<-setDT(test_r)
test_r[, uniqueN(SubjectLabel)]

#Assemble Training Set
train<-read.table("Project/UCI HAR Dataset/train/X_train.txt")
train_lab<-read.table("Project/UCI HAR Dataset/train/y_train.txt")
sub.train<-read.table("Project/UCI HAR Dataset/train/subject_train.txt")

names(train)<-varnames$V2

train_r<-cbind(train_lab, train)
train_r<-setDT(train_r)
setnames(train_r, old="V1", new="ActivityLabel")
train_r<-cbind(sub.train, train_r)
setnames(train_r, old="V1", new="SubjectLabel")
train_r<-setDT(train_r)
train_r[, uniqueN(SubjectLabel)]

#Merge
samsung<-rbind(test_r,train_r)
samsung<-setDT(samsung)

#Check for six activities, 30 subjects
#samsung[, uniqueN(SubjectLabel)]
#samsung[, uniqueN(ActivityLabel)]
#samsung[, uniqueN(ActivityLabel), by=SubjectLabel]
samsung<-as.data.frame(samsung)

#Select only vars containing mean/std dev
these<-grep("(mean|std)", names(samsung))
samsung_use<-samsung[,c(1:2,these)]

samsung_use<-setDT(samsung_use)

#Label Activities Properly
samsung_use[, ActivityLabel:=as.character(ActivityLabel)]
samsung_use[ActivityLabel=="1", ActivityLabel:="Walking"]
samsung_use[ActivityLabel=="2", ActivityLabel:="Walking Upstairs"]
samsung_use[ActivityLabel=="3", ActivityLabel:="Walking Downstairs"]
samsung_use[ActivityLabel=="4", ActivityLabel:="Sitting"]
samsung_use[ActivityLabel=="5", ActivityLabel:="Standing"]
samsung_use[ActivityLabel=="6", ActivityLabel:="Laying"]

setnames(samsung_use, old=c("SubjectLabel","ActivityLabel"), new=c("Subject","Activity"))

#Clean and tidy data for Q1
z<-names(samsung_use)
z<-z[3:81]

samsung_clean<-samsung_use[, lapply(.SD,mean,na.rm=T), by=.(Subject,Activity) ]
samsung_clean<-setorder(samsung_clean, Subject, Activity)

#Nicer names
sn<-names(samsung_clean)
sn<-gsub("\\(\\)","", sn)


names(samsung_clean)<-sn

colnames(samsung_clean)<-paste("Avg",colnames(samsung_clean),sep="_")
setnames(samsung_clean, old=c("Avg_Subject","Avg_Activity"), new=c("Subject","Activity"))

#Export tidy clean data
write.table(samsung_clean, row.name=F,file="clean_tidy_samsung_project.txt")

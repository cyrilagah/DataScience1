complete <- function(directory, id = 1:332){
        
        mylist <- list.files(path = directory, pattern = ".csv")  ##Lists all the files in dir and assigns to variable mylist
        
        nobs <- numeric()                    #create an empty num vector and assign it to a variable no.of observation (nobs)
        
        for (i in id) {                                ##for loop to run through all monitor id's
                mydata <- read.csv(mylist[i])          ##read csv files in my list and assign to var mydata 
                mysum <- sum(complete.cases(mydata))   ##computes the sum of complete cases in that particular datafile
                nobs <- c(nobs, mysum)                 #update the var nobs with the sum of complete case in that datafile
        }
        data.frame(id, nobs)
}
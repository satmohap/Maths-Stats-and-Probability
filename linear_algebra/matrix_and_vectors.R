#Load the File

library(readxl)
Movie_Sample <- read_excel("C:/Users/212315698/Desktop/Work/Study/Mathmatics/Assignment 1/Movie_Sample.xlsx")
View(Movie_Sample)

####Install SQLDF
install.packages("sqldf")
install.packages("sqldf")
library(sqldf)

#####Filter out movies which are watched by only person ####
Movie_new = sqldf("Select * from Movie_Sample      
                  where MovieID not in
                  (Select
                  MovieID
                  from
                  Movie_Sample
                  group by MovieID
                  having Count(UserID) = 1)")


####Create Co-Watch Pairs#######
Movie_cowatch = sqldf("Select 
                      A.UserID User1ID,
                      A.MovieID MovieID ,
                      B.UserID User2ID
                      FROM
                      Movie_new A
                      Inner Join
                      Movie_new B
                      ON A.UserID != B.UserID
                      AND A.MovieID = B.MovieID")
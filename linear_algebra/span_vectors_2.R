###########################Task 2 Question 1###############################################

install.packages("rgl")
###########Use case 1 consider Vectors v1 = c(1,3,5) v2 = c(2,4,7) ###############


span1 <-  calspan(1,7,c(1,3,5),c(2,4,7)) # First Span Vector  c1=1 , c2=7

span2 <-  calspan(3,5,c(1,3,5),c(2,4,7))  # second Span Vector  c1=3 , c2=5

span3 <-  calspan(10,2,c(1,3,5),c(2,4,7))  # third Span Vector  c1=10 , c2=2

span4 <-  calspan(0,0,c(1,3,5),c(2,4,7))  # fourth Span Vector c1=0 , c2=0

#Plot the Span Vectors

x<-c(span1[1], span2[1],span3[1],span4[1])
y<-c(span1[2], span2[2],span3[2],span4[2])
z<-c(span1[3], span2[3],span3[3],span4[3])
library(rgl)
plot3d(x,y,z, col="red")


## Since there are only two vectors it can't span R3##

##########################Task 2 Question 2###############################################

##Define Function calspan3d to calculate span vector of three Vectors##

calspan3d <-  function(c1,c2,c3,v1,v2,v3) # Arguments -c1 c2 c3 are constants , v1 v2 v3 are vectors
{spanvector3d <- c1*v1 + c2*v2 +c3*v3
return(spanvector3d)}


span1 <-  calspan3d(1,7,5,c(1,3,5),c(2,4,7),c(0,2,3)) # First Span Vector  c1=1 , c2=7 , c3=5

span2 <-  calspan3d(3,5,2,c(1,3,5),c(2,4,7),c(0,2,3))  # second Span Vector  c1=3 , c2=5 , c3=2

span3 <-  calspan3d(10,2,4,c(1,3,5),c(2,4,7),c(0,2,3))  # third Span Vector  c1=10 , c2=2 , c3=4

span4 <-  calspan3d(0,0,0,c(1,3,5),c(2,4,7),c(0,2,3))  # fourth Span Vector c1=0 , c2=0 , c3=0

#Plot the Span Vectors

x<-c(span1[1], span2[1],span3[1],span4[1])
y<-c(span1[2], span2[2],span3[2],span4[2])
z<-c(span1[3], span2[3],span3[3],span4[3])
library(rgl)
plot3d(x,y,z, col="blue")


#####Looking at the graph the span of these vectors is R3#####
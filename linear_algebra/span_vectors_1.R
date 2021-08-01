#Code written in R

###########################Task 1###############################################

##Define Function calspan to calculate span vector of Two Vectors##

calspan <-  function(c1,c2,v1,v2) # Arguments -c1 c2 are constants , v1 v2 are vectors
{spanvector <- c1*v1 + c2*v2
return(spanvector)}

#----------------------------------------------------------------------------#

###########Use case 1 consider Vectors v1 = c(1,3) v2 = c(2,5) ###############

span1 <-  calspan(1,7,c(1,4),c(2,3)) # First Span Vector  c1=1 , c2=7

span2 <-  calspan(3,5,c(1,4),c(2,3))  # second Span Vector  c1=3 , c2=5

span3 <-  calspan(10,2,c(1,4),c(2,3))  # third Span Vector  c1=10 , c2=2

span4 <-  calspan(0,0,c(1,4),c(2,3))  # fourth Span Vector c1=0 , c2=0

#Plot the Span Vectors

x<-c(span1[1], span2[1],span3[1], span4[1])
y<-c(span1[2], span2[2],span3[2],span4[2])
plot(x,y, col="blue")

#####Looking at the graph the span of these vectors is R2.Also these vectors are linearly independent#####


#----------------------------------------------------------------------------#

###########Use case 2 consider Vectors v1 = c(1,2) v2 = c(2,4) ###############

span1 <-  calspan(1,7,c(1,2),c(2,4)) # First Span Vector  c1=1 , c2=7

span2 <-  calspan(3,5,c(1,2),c(2,4))  # second Span Vector  c1=3 , c2=5

span3 <-  calspan(10,2,c(1,2),c(2,4))  # third Span Vector  c1=10 , c2=2

span4 <-  calspan(0,0,c(1,2),c(2,4))  # fourth Span Vector c1=0 , c2=0

#Plot the Span Vectors

x<-c(span1[1], span2[1],span3[1], span4[1])
y<-c(span1[2], span2[2],span3[2],span4[2])
plot(x,y, col="blue")

#####Looking at the graph the span of these vectors is one dimensional i.e a straight line..Also these vectors are linearly dependent#####
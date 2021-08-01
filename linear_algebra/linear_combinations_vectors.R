#---------------
Check_Matrix <- function(V)   ### create Function
{
  if (ncol(V) > nrow(V))                 ####  Check linear dependency If the matrix has more columns than rows
  {print("Yes")
  } else if (ncol(V) == nrow(V)  )       #### Check linear dependency If the Matrix is a Square Matrix
  {if ( det(V)== 0)
  {print("Yes")
  } else (print("NO"))
  } else if ( ncol(V) < nrow(V))         ##### Check Lineatr dependency if the matrix has more rows than columns
  {if (qr(V)$rank == ncol(V))
  {print("NO")#} else (print("Yes")) }
  } else (print("Yes")) 
  }
}

###Create Matrix
V = matrix(  c(2, 4, 3, 1, 5, 7), # the data elements
             nrow=3,              # number of rows
             ncol=2,              # number of columns
             byrow = TRUE)        # fill matrix by rows

### Call the Function to check the linear dependency

Output <- Check_Matrix(V)
#  VECTORS: c() or list()

# atomic vectors have three important properties
# str(), for structure. Use this
# typeof() - either logical, int, double, char (complex, raw)
# length()
# attributes (metadata)
# R has no scalar variables :) 
library(magrittr)
# c() is short for combine

dbl_var <- c(1, 2.5, 4.5) 
int_var <- c(1L,6L,10L)


# atomic vectors are always flat


# coercion: 
# when a logical vector is coerced to numeric, it becomes 1 and 0

# Lists are different than atomic vectors because their elements can be any type


# c (combine) will convert atomic vectos into lists
# OR, combine several lists into 1
x <- list(list(1,2),c(3,4))
y = c(list(1,2),c(3,4))

# EXERCISES: 
# 1 - six types of atomic vectors: 
# logical, double, integer, character, raw, complex (blah blah)
# 2 - fund. diff of 
# is.vector() and isnumeric() vs is.list() and is.character?
# ANS: is.vector=TRUE <==> vector w/o attr. 
#     is.numeric() TRUE <==> double OR int.
# wherease is.list and is.character actually work? 

#TEST:
c(1,FALSE) #=> c(1,0)
c("a",1) #=> c("a","1")
c(list(1), "a") %>% str #=> list((list(1),list("a")) 
# WRONG: list(1,"a")
list(1,"a") %>% str
c(TRUE,1L)  %>% str()# => c(1L, 1L)? 
# Why is the default missing value, NA, a logical vector?
# what is special about logical vectors? 


# attributes: 
# you can assign arb. attr. with attr(c(1,0), "hi") <- "blah"
# but will be lost when subsetting
# EXCEPT names, dim, and class !

# NAMES: 
# set with c(a=1,b=2,c=3), with names(x) <- , or setNames(1:3,letters[1:3])

# a factor is a vector that only takes predef. values

# always use stringsAsFactors=FALSE

# also using factors does not reduce memory usage compared to characters :0

# MATRICES AND ARRAYS:
# atomic vector with a dim() attribute
# e.g. 
aVec <- 1:6
dim(aVec) <- c(3,2)
# make them with these functions:
a <- matrix(1:6,ncol=3,nrow=2)
b <- array(1:12,c(2,3,2))
# what about other attributes? 
# length () -> nrow(), ncol(), dim()
dim(aVec)
# names() -> rownames(), colnames(),  dimnames()
dimnames(aVec)

dimnames(b) <- list(c("one", "two"), c("a", "b", "c"), c("A", "B"))A
# you can also make list matrices or list arrays:
l <- list(1:3, "a", TRUE, 1.0)
dim(l) <- c(2, 2)

# Exercise: 
# dim applied to a vector? #-> NULL
# is.matrix() <-> is.array(x) also TRUE? 
# final question: 

# how are following objects different:
x1 <- array(1:5, c(1, 1, 5))
x2 <- array(1:5, c(1, 5, 1))
x3 <- array(1:5, c(5, 1, 1))
# well obvi they are different dimensions


# DATA FRAMES:
# under the hood, a list of equal length vectors
# data.frame() will turn strings to factors, so remember strinsAsFactors=FALSE

# coercing with as.data.frame(): 
# vector -> one-clumn
# list -> one column for each element (must be equal length)
# matrix -> col and rows

# combining: 
# DONT use cbind on some vectors, because cbind makes a matrix
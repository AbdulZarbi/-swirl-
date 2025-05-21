library("swirl")
swirl()
5 +7
x <- 5 + 7
x
y <- x - 3
y
c ( 1.1, 9, 3.14)
z <- c( 1.1, 9, 3.14)
?c
z
c(z, 555, z)
z * 2 + 100
my_sqrt <- sqrt( z - 1)
my_sqrt
my_div <- c( z / my_sqrt)
my_div <- c(z/my_sqrt)
my_div <- z / my_sqrt
my_div
c (1, 2, 3, 4) c(0, 10)
c (1, 2, 3, 4) + c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)
z * 2 + 1000
my_div
getwd()
ls()
x <- 9
ls()
list.files()
?list.files
args()
args(list.files)
<- old.dir
info()
args(old.dir)
skip()
testdir <- dir.create()
dir.create("testdir")
setwd("/user/abdulzarbi/iclouddrive/thedatascientisttoolbox/swirlpackage/swirl/testdir")
skip()
file.create("mytest.R")
ls()
list.files()
file.exists()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest2.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path("mytest3.R")
file.path('folder1', 'folder2')
?dir.create
dir.create()
dir.create("testdir2", file.path("testdir3"))
dir.create(file.path('testdir2', 'testdir3'))
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
setwd("test2.R")
skip()
1:20
pi:10
15:1?
15:1
package <- topic :
15:1?
15:1
skip()
?':'
seq(1, 20)
seq(0, 10, by=0.5)
called my_seq <- seq(5, 10, length=30)
calledmy_seq <- seq(5, 10, length=30)
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times =40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)
c(0.5, 55, -10, 6)
num_vect <- c(0.5, 55, -10, 6)
tf <- c(num_vect < 1)
tf <- num_vect <1
tf
num_vect >= 6
my_char <- c("my", "name", "is")
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
my_name <- c(my_char, "Abdul")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world", sep = " ")
paste("Hello", "world!", sep = " ")
paste(1:3, c("X", "Y", "Z"))
paste(1:3, c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep = "-")
x <- c(44, NA, 5, NA)
x * 3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)
is.na(my_data)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_na
print(my_na)
| Would you like to receive credit for completing this course on Coursera.org?
print(my_na)
my_na
skip()
0/0
Inf - Inf
x
x[1:10]
x[is.na(x)]
y <- x[!is.na(x)]
y
y[y>0]
x[x >0]
x[!is.na(x) & x >0]
x[c(3, 5, 7)]
x (i.e. x[0])
x(x[0])
skip()
x[3000]
x[c(-2, -10)]
x[-c(2, 10)]
vect <-c(foo =11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
2
vect["bar"]
vect[c("foo", "bar",)]
names(vect[c("foo", "bar", "bar")])
vect[c("foo", "bar")]
my_vector <- c(1:20)
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
My_matrix <- c(my_vector)
My_matrix <- my_vector
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(1:20, now = 4, ncol = 5)
my_matrix2 <- matrix(1:2, nrow = 4, ncol = 5)
skip()
identical(my_matrix, my_matrix2)
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my-data
my_data
class(my_data)
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(cnames)
colnames(my_data)
colnames(my_data) <- cnames
my_data
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6<7
10 <= 10
5 != 7
5 !TRUE 7
5!=7
5 ==7
5!==7
5 != 7
skip()
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRi
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6!= && 4 >3.9
5 >8 || 6 != 8 && 4 > 3.9
isTRUE(6 >4)
identical('twins', 'twins')
xor(5 == 6, !FALSE)
ints <- sample(10)
ints
ints > 5
which(ints > 7)
any(ints <0)
all(ints >0)
Sys.Date()
mean(c(2, 4, 5 ))
skip()
boring_function( <- function('My first function'))
boring_function('My first
| function!')
boring_function('My first function!')
boring_function()
boring_function
submit()
submit(my_mean)
skip()
my_mean(c(4, 5, 10))
skip()
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)
skip()
evaluate(c(1.4, 3.6, 7.9, 8.8))
evaluate(1.4, 3.6, 7.9, 8.8)
skip()
evaluate(function(x){x+1}, 6)
evaluate(c(8, 4, 0))
skip()
skip()
skip()
paste("programing", "is", "fun!")
paste("Programming", "is", "fun!")
skip()
function(telegram())
function(telegram)
skip()
skip()
skip()
skip()
skip()
head(flags)
dim(flags)
class(flags)
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)
sapply(cls_list)
cls_vect <- sapply(flags, class)
class(cls_vect)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 6, 6))
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(flags, unique)
unique_vals
length(unique_vals)
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(elem) elem[2])
sapply(flags, unique)
vapply(flag, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)
savehistory("Swirl.R")

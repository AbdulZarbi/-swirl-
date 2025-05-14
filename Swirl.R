library("swirl")
swirl()
Abdul
Welcome to swirl! Please sign in. If you've been here before, use the same name as
| you did then. If you are new, call yourself something unique.

What shall I call you? Abdul 

| Would you like to continue with one of these lessons?

1: R Programming Basic Building Blocks
2: No. Let me start something new.

Selection: 1



| In its simplest form, R can be used as an interactive calculator. Type 5 + 7 and
| press Enter.

> 5 +7
[1] 12

| You are quite good my friend!

  |======                                                                         |   8%
| R simply prints the result of 12 by default. However, R is a programming language and
| often the reason we use a programming language as opposed to a calculator is to
| automate some process or avoid unnecessary repetition.

...

  |========                                                                       |  11%
| In this case, we may want to use our result from above in a second calculation.
| Instead of retyping 5 + 7 every time we need it, we can just create a new variable
| that stores the result.

...

  |==========                                                                     |  13%
| The way you assign a value to a variable in R is by using the assignment operator,
| which is just a 'less than' symbol followed by a 'minus' sign. It looks like this: <-

...

  |============                                                                   |  16%
| Think of the assignment operator as an arrow. You are assigning the value on the
| right side of the arrow to the variable name on the left side of the arrow.

...

  |===============                                                                |  18%
| To assign the result of 5 + 7 to a new variable called x, you type x <- 5 + 7. This
| can be read as 'x gets 5 plus 7'. Give it a try now.

> x <- 5 + 7

| Great job!

  |=================                                                              |  21%
| You'll notice that R did not print the result of 12 this time. When you use the
| assignment operator, R assumes that you don't want to see the result immediately, but
| rather that you intend to use the result for something else later on.

...

  |===================                                                            |  24%
| To view the contents of the variable x, just type x and press Enter. Try it now.

> x
[1] 12

| That's correct!
  
  |=====================                                                          |  26%
| Now, store the result of x - 3 in a new variable called y.

> y <- x - 3

| You got it right!
  
  |=======================                                                        |  29%
| What is the value of y? Type y to find out.

> y
[1] 9

| Keep working like that and you'll get there!

  |=========================                                                      |  32%
| Now, let's create a small collection of numbers called a vector. Any object that
| contains data is called a data structure and numeric vectors are the simplest type of
| data structure in R. In fact, even a single number is considered a vector of length
| one.

...

|===========================                                                    |  34%
| The easiest way to create a vector is with the c() function, which stands for
| 'concatenate' or 'combine'. To create a vector containing the numbers 1.1, 9, and
| 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable called z.

> c ( 1.1, 9, 3.14)
[1] 1.10 9.00 3.14

| Give it another try. Or, type info() for more options.

| Inputting z <- c(1.1, 9, 3.14) will assign the vector (1.1, 9, 3.14) to a new
| variable called z. Including single spaces after the commas in the vector is not
| required, but helps make your code less cluttered and more readable.

> z <- c( 1.1, 9, 3.14)

| Keep up the great work!
  
  |=============================                                                  |  37%
| Anytime you have questions about a particular function, you can access R's built-in
| help files via the `?` command. For example, if you want more information on the c()
| function, type ?c without the parentheses that normally follow a function name. Give
| it a try.

> ?c

| Keep working like that and you'll get there!
  
  |===============================                                                |  39%
| Type z to view its contents. Notice that there are no commas separating the values in
| the output.

> z
[1] 1.10 9.00 3.14

| You are really on a roll!
  
  |=================================                                              |  42%
| You can combine vectors to make a new vector. Create a new vector that contains z,
| 555, then z again in that order. Don't assign this vector to a new variable, so that
| we can just see the result immediately.

> c(z, 555, z)
[1]   1.10   9.00   3.14 555.00   1.10   9.00   3.14

| You nailed it! Good job!

  |===================================                                            |  45%
| Numeric vectors can be used in arithmetic expressions. Type the following to see what
| happens: z * 2 + 100.

> z * 2 + 100
[1] 102.20 118.00 106.28

| That's the answer I was looking for.

|=====================================                                          |  47%
| First, R multiplied each of the three elements in z by 2. Then it added 100 to each
| element to get the result you see above.

...

|========================================                                       |  50%
| Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 means 'x
| squared'). To take the square root, use the sqrt() function and to take the absolute
| value, use the abs() function.

...

|==========================================                                     |  53%
| Take the square root of z - 1 and assign it to a new variable called my_sqrt.

> my_sqrt <- sqrt( z - 1)

| You are quite good my friend!
  
  |============================================                                   |  55%
| Before we view the contents of the my_sqrt variable, what do you think it contains?
  
  1: a vector of length 3
2: a single number (i.e a vector of length 1)
3: a vector of length 0 (i.e. an empty vector)

Selection: 1

| Keep working like that and you'll get there!

  |==============================================                                 |  58%
| Print the contents of my_sqrt.

> my_sqrt
[1] 0.3162278 2.8284271 1.4628739

| Excellent job!

  |================================================                               |  61%
| As you may have guessed, R first subtracted 1 from each element of z, then took the
| square root of each element. This leaves you with a vector of the same length as the
| original vector z.

...

  |==================================================                             |  63%
| Now, create a new variable called my_div that gets the value of z divided by my_sqrt.

> my_div <- c( z / my_sqrt)

| Almost! Try again. Or, type info() for more options.

| Enter my_div <- z / my_sqrt. The spaces on either side of the `/` sign are not
| required, but can often improve readability by making code appear less cluttered. In
| the end, it's personal preference.

> my_div <- c(z/my_sqrt)

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Enter my_div <- z / my_sqrt. The spaces on either side of the `/` sign are not
| required, but can often improve readability by making code appear less cluttered. In
| the end, it's personal preference.

> my_div <- z / my_sqrt

| Perseverance, that's the answer.

|====================================================                           |  66%
| Which statement do you think is true?
  
  1: The first element of my_div is equal to the first element of z divided by the first element of my_sqrt, and so on...
2: my_div is undefined
3: my_div is a single number (i.e a vector of length 1)

Selection: 1

| You got it right!
  
  |======================================================                         |  68%
| Go ahead and print the contents of my_div.

> my_div
[1] 3.478505 3.181981 2.146460

| Your dedication is inspiring!
  
  |========================================================                       |  71%
| When given two vectors of the same length, R simply performs the specified arithmetic
| operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors are of different
| lengths, R 'recycles' the shorter vector until it is the same length as the longer
| vector.

...

|==========================================================                     |  74%
| When we did z * 2 + 100 in our earlier example, z was a vector of length 3, but
| technically 2 and 100 are each vectors of length 1.

...

|============================================================                   |  76%
| Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make
| a vector of 100s. In other words, when you ask R to compute z * 2 + 100, what it
| really computes is this: z * c(2, 2, 2) + c(100, 100, 100).

...

|==============================================================                 |  79%
| To see another example of how this vector 'recycling' works, try adding c(1, 2, 3, 4)
| and c(0, 10). Don't worry about saving the result in a new variable.

> c (1, 2, 3, 4) c(0, 10)
Error: unexpected symbol in "c (1, 2, 3, 4) c"
> c (1, 2, 3, 4) + c(0, 10)
[1]  1 12  3 14

| Nice work!

  |================================================================               |  82%
| If the length of the shorter vector does not divide evenly into the length of the
| longer vector, R will still apply the 'recycling' method, but will throw a warning to
| let you know something fishy might be going on.

...

  |===================================================================            |  84%
| Try c(1, 2, 3, 4) + c(0, 10, 100) for an example.

> c(1, 2, 3, 4) + c(0, 10, 100) 
[1]   1  12 103   4
Warning message:
In c(1, 2, 3, 4) + c(0, 10, 100) :
  longer object length is not a multiple of shorter object length

| You got it!

  |=====================================================================          |  87%
| Before concluding this lesson, I'd like to show you a couple of time-saving tricks.

...

|=======================================================================        |  89%
| Earlier in the lesson, you computed z * 2 + 100. Let's pretend that you made a
| mistake and that you meant to add 1000 instead of 100. You could either re-type the
| expression, or...

...

  |=========================================================================      |  92%
| In many programming environments, the up arrow will cycle through previous commands.
| Try hitting the up arrow on your keyboard until you get to this command (z * 2 +
| 100), then change 100 to 1000 and hit Enter. If the up arrow doesn't work for you,
| just type the corrected command.

> z * 2 + 1000
[1] 1002.20 1018.00 1006.28

| Keep up the great work!
  
  |===========================================================================    |  95%
| Finally, let's pretend you'd like to view the contents of a variable that you created
| earlier, but you can't seem to remember if you named it my_div or myDiv. You could
| try both and see what works, or...

...

  |=============================================================================  |  97%
| You can type the first two letters of the variable name, then hit the Tab key
| (possibly more than once). Most programming environments will provide a list of
| variables that you've created that begin with 'my'. This is called auto-completion
| and can be quite handy when you have many variables in your workspace. Give it a try.
| (If auto-completion doesn't work for you, just type my_div and press Enter.)

> my_div
[1] 3.478505 3.181981 2.146460

| Keep up the great work!

  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 2

  |                                                                               |   0%

| In this lesson, you'll learn how to examine your local workspace in R and begin to
   | explore the relationship between your workspace and the file system of your machine.
   
   ...
   
   |==                                                                             |   3%
   | Because different operating systems have different conventions with regards to things like file paths, the outputs of these
   | commands may vary across machines.
   
   ...
   
   |====                                                                           |   5%
   | However it's important to note that R provides a common API (a common set of commands) for interacting with files, that way
| your code will work across different kinds of computers.

...

  |======                                                                         |   8%
| Let's jump right in so you can get a feel for how these special functions work!
     
     ...
   
   |========                                                                       |  10%
   | Determine which directory your R session is using as its current working directory using getwd().
   
   > getwd()
   [1] "/Users/zarbi/Library/Mobile Documents/com~apple~CloudDocs/The Data Scientist Toolbox/Swirlpackage/Swirl"
   
   | You got it!
     
     |==========                                                                     |  13%
   | List all the objects in your local workspace using ls().
   
   > ls()
   [1] "my_div"  "my_sqrt" "x"       "y"       "z"      
   
   | Great job!
     
     |============                                                                   |  15%
   | Some R commands are the same as their equivalents commands on Linux or on a Mac. Both Linux and Mac operating systems are
   | based on an operating system called Unix. It's always a good idea to learn more about Unix!

...

  |==============                                                                 |  18%
| Assign 9 to x using x <- 9.

> x <- 9

| All that hard work is paying off!

  |================                                                               |  21%
| Now take a look at objects that are in your workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| Keep up the great work!

  |==================                                                             |  23%
| List all the files in your working directory using list.files() or dir().

> list.files()
[1] "README.md"   "Swirl.R"     "Swirl.Rproj"

| You are quite good my friend!

  |====================                                                           |  26%
| As we go through this lesson, you should be examining the help page for each new function. Check out the help page for
| list.files with the command ?list.files.

> ?list.files

| You are really on a roll!

  |======================                                                         |  28%
| One of the most helpful parts of any R help file is the See Also section. Read that section for list.files. Some of these
| functions may be used in later portions of this lesson.

...

  |========================                                                       |  31%
| Using the args() function on a function name is also a handy way to see what arguments a function can take.

...

  |==========================                                                     |  33%
| Use the args() function to determine the arguments to list.files().

> args()
Error in args() : argument "name" is missing, with no default
> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
    recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
    no.. = FALSE) 
NULL

| That's correct!
     
     |============================                                                   |  36%
   | Assign the value of the current working directory to a variable called "old.dir".
   
   > <- old.dir
   Error: unexpected assignment in "<-"
   > info()
   
   | When you are at the R prompt (>):
     | -- Typing skip() allows you to skip the current question.
   | -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
   | -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
   | -- Typing info() displays these options again.
   
   > args(old.dir)
   Error: object 'old.dir' not found
   > skip()
   
   | Entering the following correct answer for you...
   
   > old.dir <- getwd()
   
   | Excellent job!
     
     |==============================                                                 |  38%
   | We will use old.dir at the end of this lesson to move back to the place that we started. A lot of query functions like
   | getwd() have the useful property that they return the answer to the question as a result of the function.
   
   ...
   
   |================================                                               |  41%
   | Use dir.create() to create a directory in the current working directory called "testdir".
   
   > testdir <- dir.create()
   Error in dir.create() : argument "path" is missing, with no default
   > dir.create("testdir")
   
   | You got it!
     
     |==================================                                             |  44%
   | We will do all our work in this new directory and then delete it after we are done. This is the R analog to "Take only
| pictures, leave only footprints."
   
   ...
   
   |====================================                                           |  46%
   | Set your working directory to "testdir" with the setwd() command.
   
   > setwd("/user/abdulzarbi/iclouddrive/thedatascientisttoolbox/swirlpackage/swirl/testdir")
   Error in setwd("/user/abdulzarbi/iclouddrive/thedatascientisttoolbox/swirlpackage/swirl/testdir") : 
     cannot change working directory
   > skip()
   
   | Entering the following correct answer for you...
   
   > setwd("testdir")
   
   | Great job!
     
     |======================================                                         |  49%
   | In general, you will want your working directory to be someplace sensible, perhaps created for the specific project that
   | you are working on. In fact, organizing your work in R packages using RStudio is an excellent option. Check out RStudio at
   | http://www.rstudio.com/
     
     ...
   
   |=========================================                                      |  51%
   | Create a file in your working directory called "mytest.R" using the file.create() function.
   
   > file.create("mytest.R")
   [1] TRUE
   
   | You are doing so well!
     
     |===========================================                                    |  54%
   | This should be the only file in this newly created directory. Let's check this by listing all the files in the current
| directory.

> ls()
[1] "my_div"  "my_sqrt" "old.dir" "x"       "y"       "z"      

| One more time. You can do it! Or, type info() for more options.

| list.files() shows that the directory only contains mytest.R.

> list.files()
[1] "mytest.R"

| Keep working like that and you'll get there!
     
     |=============================================                                  |  56%
   | Check to see if "mytest.R" exists in the working directory using the file.exists() function.
   
   > file.exists()
   Error in file.exists() : invalid 'file' argument
   > file.exists("mytest.R")
   [1] TRUE
   
   | Keep up the great work!
     
     |===============================================                                |  59%
   | These sorts of functions are excessive for interactive use. But, if you are running a program that loops through a series
   | of files and does some processing on each one, you will want to check to see that each exists before you try to process it.
   
   ...
   
   |=================================================                              |  62%
   | Access information about the file "mytest.R" by using file.info().
   
   > file.info("mytest.R")
   size isdir mode               mtime               ctime               atime uid gid uname grname
   mytest.R    0 FALSE  644 2025-05-13 21:23:17 2025-05-13 21:23:20 2025-05-13 21:23:18 501  20 zarbi  staff
   
   | You nailed it! Good job!
     
     |===================================================                            |  64%
   | You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific items.
   
   ...
   
   |=====================================================                          |  67%
   | Change the name of the file "mytest.R" to "mytest2.R" by using file.rename().
   
   > file.rename("mytest2.R")
   Error in file.rename("mytest2.R") : 
     argument "to" is missing, with no default
   > file.rename("mytest.R", "mytest2.R")
   [1] TRUE
   
   | Excellent job!
     
     |=======================================================                        |  69%
   | Your operating system will provide simpler tools for these sorts of tasks, but having the ability to manipulate files
   | programatically is useful. You might now try to delete mytest.R using file.remove('mytest.R'), but that won't work since
| mytest.R no longer exists. You have already renamed it.

...

  |=========================================================                      |  72%
| Make a copy of "mytest2.R" called "mytest3.R" using file.copy().

> file.copy("mytest2.R", "mytest3.R")
[1] TRUE

| Keep up the great work!

  |===========================================================                    |  74%
| You now have two files in the current directory. That may not seem very interesting. But what if you were working with
| dozens, or millions, of individual files? In that case, being able to programatically act on many files would be absolutely
| necessary. Don't forget that you can, temporarily, leave the lesson by typing play() and then return by typing nxt().
   
   ...
   
   |=============================================================                  |  77%
   | Provide the relative path to the file "mytest3.R" by using file.path().
   
   > file.path("mytest3.R")
   [1] "mytest3.R"
   
   | You are really on a roll!
     
     |===============================================================                |  79%
   | You can use file.path to construct file and directory paths that are independent of the operating system your R code is
   | running on. Pass 'folder1' and 'folder2' as arguments to file.path to make a platform-independent pathname.
   
   > file.path('folder1', 'folder2')
   [1] "folder1/folder2"
   
   | That's correct!

  |=================================================================              |  82%
| Take a look at the documentation for dir.create by entering ?dir.create . Notice the 'recursive' argument. In order to
| create nested directories, 'recursive' must be set to TRUE.

> ?dir.create

| That's the answer I was looking for.
   
   |===================================================================            |  85%
   | Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3", all in
   | one command by using dir.create() and file.path().
   
   > dir.create()
   Error in dir.create() : argument "path" is missing, with no default
   > dir.create("testdir2", file.path("testdir3"))
   
   | Not quite! Try again. Or, type info() for more options.
   
   | dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE) will do the trick. If you forgot the recursive argument,
   | the command may have appeared to work, but it didn't create the nested directory.

> dir.create(file.path('testdir2', 'testdir3'))

| Not exactly. Give it another go. Or, type info() for more options.

| dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE) will do the trick. If you forgot the recursive argument,
| the command may have appeared to work, but it didn't create the nested directory.
   
   > dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
   Warning message:
     In dir.create(file.path("testdir2", "testdir3"), recursive = TRUE) :
     'testdir2/testdir3' already exists
   
   | You got it right!
     
     |=====================================================================          |  87%
   | Go back to your original working directory using setwd(). (Recall that we created the variable old.dir with the full path
                                                                | for the orginal working directory at the start of these questions.)
   
   > setwd("test2.R")
   Error in setwd("test2.R") : cannot change working directory
   > skip()
   
   | Entering the following correct answer for you...
   
   > setwd(old.dir)
   
   | You got it right!
     
     |=======================================================================        |  90%
   | It is often helpful to save the settings that you had before you began an analysis and then go back to them at the end.
   | This trick is often used within functions; you save, say, the par() settings that you started with, mess around a bunch,
   | and then set them back to the original values at the end. This isn't the same as what we have done here, but it seems
| similar enough to mention.

...

  |=========================================================================      |  92%
| After you finish this lesson delete the 'testdir' directory that you just left (and everything in it)

...

  |===========================================================================    |  95%
| Take nothing but results. Leave nothing but assumptions. That sounds like 'Take nothing but pictures. Leave nothing but
   | footprints.' But it makes no sense! Surely our readers can come up with a better motto . . .

...

  |=============================================================================  |  97%
| In this lesson, you learned how to examine your R workspace and work with the file system of your machine from within R.
| Thanks for playing!

...

  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 1

| You got it right!

| You've reached the end of this lesson! Returning to the main menu...
   
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
   
   Selection: 3
   
   |                                                                                               |   0%
   
   | In this lesson, you'll learn how to create sequences of numbers in R.

...

  |====                                                                                           |   4%
| The simplest way to create a sequence of numbers in R is by using the `:` operator. Type 1:20 to see
| how it works.

> 1:20
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are amazing!

  |========                                                                                       |   9%
| That gave us every integer between (and including) 1 and 20. We could also use it to create a sequence
| of real numbers. For example, try pi:10.

> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

| You are amazing!

  |============                                                                                   |  13%
| The result is a vector of real numbers starting with pi (3.142...) and increasing in increments of 1.
| The upper limit of 10 is never reached, since the next number in our sequence would be greater than
| 10.

...

  |=================                                                                              |  17%
| What happens if we do 15:1? Give it a try to find out.

> 15:1?
+ 15:1
Error in if (type == "package") package <- topic : 
  the condition has length > 1
> 
> package <- topic :
+ 15:1?
+ 15:1
Error: object 'topic' not found
> skip()

| Entering the following correct answer for you...

> 15:1
 [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

| You are doing so well!

  |=====================                                                                          |  22%
| It counted backwards in increments of 1! It's unlikely we'd want this behavior, but nonetheless it's
   | good to know how it could happen.
   
   ...
   
   |=========================                                                                      |  26%
   | Remember that if you have questions about a particular R function, you can access its documentation
   | with a question mark followed by the function name: ?function_name_here. However, in the case of an
   | operator like the colon used above, you must enclose the symbol in backticks like this: ?`:`. (NOTE:
                                                                                                      | The backtick (`) key is generally located in the top left corner of a keyboard, above the Tab key. If
                                                                                                    | you don't have a backtick key, you can use regular quotes.)

...

  |=============================                                                                  |  30%
| Pull up the documentation for `:` now.

> ?':'

| You are doing so well!

  |=================================                                                              |  35%
| Often, we'll desire more control over a sequence we're creating than what the `:` operator gives us.
| The seq() function serves this purpose.

...

  |=====================================                                                          |  39%
| The most basic use of seq() does exactly the same thing as the `:` operator. Try seq(1, 20) to see
| this.

> seq(1, 20)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Perseverance, that's the answer.
                                                                                                    
                                                                                                    |=========================================                                                      |  43%
                                                                                                    | This gives us the same output as 1:20. However, let's say that instead we want a vector of numbers
| ranging from 0 to 10, incremented by 0.5. seq(0, 10, by=0.5) does just that. Try it out.

> seq(0, 10, by=0.5)
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5
[21] 10.0

| That's the answer I was looking for.
                                                                                                    
                                                                                                    |=============================================                                                  |  48%
                                                                                                    | Or maybe we don't care what the increment is and we just want a sequence of 30 numbers between 5 and
| 10. seq(5, 10, length=30) does the trick. Give it a shot now and store the result in a new variable
| called my_seq.

> called my_seq <- seq(5, 10, length=30)
Error: unexpected symbol in "called my_seq"
> calledmy_seq <- seq(5, 10, length=30)

| Keep trying! Or, type info() for more options.

| You're using the same function here, but changing its arguments for different results. Be sure to
                                                                                                    | store the result in a new variable called my_seq, like this: my_seq <- seq(5, 10, length=30).
                                                                                                    
                                                                                                    > my_seq <- seq(5, 10, length=30)
                                                                                                    
                                                                                                    | That's correct!

  |==================================================                                             |  52%
| To confirm that my_seq has length 30, we can use the length() function. Try it now.

> length(my_seq)
[1] 30

| You got it!

  |======================================================                                         |  57%
| Let's pretend we don't know the length of my_seq, but we want to generate a sequence of integers from
| 1 to N, where N represents the length of the my_seq vector. In other words, we want a new vector (1,
| 2, 3, ...) that is the same length as my_seq.

...

  |==========================================================                                     |  61%
| There are several ways we could do this. One possibility is to combine the `:` operator and the
| length() function like this: 1:length(my_seq). Give that a try.

> 1:length(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| You are really on a roll!

  |==============================================================                                 |  65%
| Another option is to use seq(along.with = my_seq). Give that a try.

> seq(along.with = my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| Nice work!

  |==================================================================                             |  70%
| However, as is the case with many common tasks, R has a separate built-in function for this purpose
| called seq_along(). Type seq_along(my_seq) to see it in action.

> seq_along(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| That's a job well done!
                                                                                                      
                                                                                                      |======================================================================                         |  74%
                                                                                                    | There are often several approaches to solving the same problem, particularly in R. Simple approaches
                                                                                                    | that involve less typing are generally best. It's also important for your code to be readable, so that
| you and others can figure out what's going on without too much hassle.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |==========================================================================                     |  78%
                                                                                                    | If R has a built-in function for a particular task, it's likely that function is highly optimized for
| that purpose and is your best option. As you become a more advanced R programmer, you'll design your
                                                                                                    | own functions to perform tasks when there are no better options. We'll explore writing your own
| functions in future lessons.

...

  |==============================================================================                 |  83%
| One more function related to creating sequences of numbers is rep(), which stands for 'replicate'.
| Let's look at a few uses.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |===================================================================================            |  87%
                                                                                                    | If we're interested in creating a vector that contains 40 zeros, we can use rep(0, times = 40). Try it
| out.

> rep(0, times =40)
 [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| You are really on a roll!

  |=======================================================================================        |  91%
| If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), we can do rep(c(0, 1,
| 2), times = 10). Go ahead.

> rep(c(0, 1, 2), times = 10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

| You're the best!
                                                                                                      
                                                                                                      |===========================================================================================    |  96%
                                                                                                    | Finally, let's say that rather than repeating the vector (0, 1, 2) over and over again, we want our
| vector to contain 10 zeros, then 10 ones, then 10 twos. We can do this with the `each` argument. Try
| rep(c(0, 1, 2), each = 10).

> rep(c(0, 1, 2), each = 10)
 [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2

| All that practice is paying off!

  |===============================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?


#Selection: 4

  |                                                                                             |   0%

| The simplest and most common data structure in R is the vector.

...

  |==                                                                                           |   3%
| Vectors come in two different flavors: atomic vectors and lists. An atomic vector contains exactly
| one data type, whereas a list may contain multiple data types. We'll explore atomic vectors further
| before we get to lists.

...

  |=====                                                                                        |   5%
| In previous lessons, we dealt entirely with numeric vectors, which are one type of atomic vector.
| Other types of atomic vectors include logical, character, integer, and complex. In this lesson,
| we'll take a closer look at logical and character vectors.

...

  |=======                                                                                      |   8%
| Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available'). These values are
| generated as the result of logical 'conditions'. Let's experiment with some simple conditions.

...

  |==========                                                                                   |  11%
| First, create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.

> c(0.5, 55, -10, 6)
[1]   0.5  55.0 -10.0   6.0

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Recall that the c() function is used for creating a vector. If you forget how to use it, use ?c to
| access the help file. Don't forget to assign the result to a new variable called num_vect.

> num_vect <- c(0.5, 55, -10, 6)

| You are really on a roll!

  |============                                                                                 |  13%
| Now, create a variable called tf that gets the result of num_vect < 1, which is read as 'num_vect is
| less than 1'.

> tf <- c(num_vect < 1)

| One more time. You can do it! Or, type info() for more options.

| Use tf <- num_vect < 1 to assign the result of num_vect < 1 to a variable called tf.

> tf <- num_vect <1

| Perseverance, that's the answer.

  |===============                                                                              |  16%
| What do you think tf will look like?

1: a single logical value
2: a vector of 4 logical values

Selection: 1

| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember our lesson on vector arithmetic? The theme was that R performs many operations on an
| element-by-element basis. We called these 'vectorized' operations.

1: a vector of 4 logical values
2: a single logical value

Selection: 1

| Your dedication is inspiring!

  |=================                                                                            |  18%
| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| Keep working like that and you'll get there!

  |====================                                                                         |  21%
| The statement num_vect < 1 is a condition and tf tells us whether each corresponding element of our
| numeric vector num_vect satisfies this condition.

...

  |======================                                                                       |  24%
| The first element of num_vect is 0.5, which is less than 1 and therefore the statement 0.5 < 1 is
| TRUE. The second element of num_vect is 55, which is greater than 1, so the statement 55 < 1 is
| FALSE. The same logic applies for the third and fourth elements.

...

  |========================                                                                     |  26%
| Let's try another. Type num_vect >= 6 without assigning the result to a new variable.

> num_vect >= 6
[1] FALSE  TRUE FALSE  TRUE

| You are really on a roll!

  |===========================                                                                  |  29%
| This time, we are asking whether each individual element of num_vect is greater than OR equal to 6.
| Since only 55 and 6 are greater than or equal to 6, the second and fourth elements of the result are
| TRUE and the first and third elements are FALSE.

...

  |=============================                                                                |  32%
| The `<` and `>=` symbols in these examples are called 'logical operators'. Other logical operators
| include `>`, `<=`, `==` for exact equality, and `!=` for inequality.

...

  |================================                                                             |  34%
| If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B
| (logical 'or' a.k.a. 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a.
| 'intersection'). Lastly, !A is the negation of A and is TRUE when A is FALSE and vice versa.

...

  |==================================                                                           |  37%
| It's a good idea to spend some time playing around with various combinations of these logical
| operators until you get comfortable with their use. We'll do a few examples here to get you started.

...

  |=====================================                                                        |  39%
| Try your best to predict the result of each of the following statements. You can use pencil and
| paper to work them out if it's helpful. If you get stuck, just guess and you've got a 50% chance of
| getting the right answer!

...

  |=======================================                                                      |  42%
| (3 > 5) & (4 == 4)

1: FALSE
2: TRUE

Selection: 2

| Not quite! Try again.

| Break this problem down into 2 pieces. The `&` in the middle states that BOTH pieces are TRUE. Your
| job is to figure out if that is an accurate statement. If so, the entire condition is TRUE. If not,
| it's FALSE.

1: FALSE
2: TRUE

Selection: 1

| Excellent job!

  |==========================================                                                   |  45%
| (TRUE == TRUE) | (TRUE == FALSE)

1: TRUE
2: FALSE

Selection: 2

| Almost! Try again.

| Break this problem down into 2 pieces. The `|` in the middle states that AT LEAST ONE of the pieces
| is TRUE. Your job is to figure out if that is an accurate statement. If so, the entire condition is
| TRUE. If not, it's FALSE.

1: FALSE
2: TRUE

Selection: 1

| That's not exactly what I'm looking for. Try again.

| Break this problem down into 2 pieces. The `|` in the middle states that AT LEAST ONE of the pieces
| is TRUE. Your job is to figure out if that is an accurate statement. If so, the entire condition is
| TRUE. If not, it's FALSE.

1: TRUE
2: FALSE

Selection: 1

| That's the answer I was looking for.

  |============================================                                                 |  47%
| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: FALSE
2: TRUE

Selection: 1

| Keep trying!

| This is a tricky one. Remember that the `!` symbol negates whatever comes after it. There's also an
| 'order of operations' going on here. Conditions that are enclosed within parentheses should be
| evaluated first. Then, work your way outwards.

1: TRUE
2: FALSE

Selection: 1

| Great job!

  |==============================================                                               |  50%
| Don't worry if you found these to be tricky. They're supposed to be. Working with logical statements
| in R takes practice, but your efforts will be rewarded in future lessons (e.g. subsetting and
| control structures).

...

  |=================================================                                            |  53%
| Character vectors are also very common in R. Double quotes are used to distinguish character
| objects, as in the following example.

...

  |===================================================                                          |  55%
| Create a character vector that contains the following words: "My", "name", "is". Remember to enclose
| each word in its own set of double quotes, so that R knows they are character strings. Store the
| vector in a variable called my_char.

> my_char <- c("my", "name", "is")

| Not quite right, but keep trying. Or, type info() for more options.

| Type my_char <- c("My", "name", "is") to create a new variable called my_char that contains a
| character vector of length 3. Make sure that the commas separating the words are OUTSIDE of the
| double quotes, or else R thinks the commas are part of the words.

> my_char <- c("My", "name", "is")

| That's a job well done!

  |======================================================                                       |  58%
| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| All that practice is paying off!

  |========================================================                                     |  61%
| Right now, my_char is a character vector of length 3. Let's say we want to join the elements of
| my_char together into one continuous character string (i.e. a character vector of length 1). We can
| do this using the paste() function.

...

  |===========================================================                                  |  63%
| Type paste(my_char, collapse = " ") now. Make sure there's a space between the double quotes in the
| `collapse` argument. You'll see why in a second.

> paste(my_char, collapse = " ")
[1] "My name is"

| All that practice is paying off!

  |=============================================================                                |  66%
| The `collapse` argument to the paste() function tells R that when we join together the elements of
| the my_char character vector, we'd like to separate them with single spaces.

...

  |================================================================                             |  68%
| It seems that we're missing something.... Ah, yes! Your name!

...

  |==================================================================                           |  71%
| To add (or 'concatenate') your name to the end of my_char, use the c() function like this:
| c(my_char, "your_name_here"). Place your name in double quotes where I've put "your_name_here". Try
| it now, storing the result in a new variable called my_name.

> my_name <- c(my_char, "Abdul")

| You are quite good my friend!

  |=====================================================================                        |  74%
| Take a look at the contents of my_name.

> my_name
[1] "My"    "name"  "is"    "Abdul"

| All that hard work is paying off!

  |=======================================================================                      |  76%
| Now, use the paste() function once more to join the words in my_name together into a single
| character string. Don't forget to say collapse = " "!

> paste(my_name, collapse = " ")
[1] "My name is Abdul"

| Perseverance, that's the answer.

  |=========================================================================                    |  79%
| In this example, we used the paste() function to collapse the elements of a single character vector.
| paste() can also be used to join the elements of multiple character vectors.

...

  |============================================================================                 |  82%
| In the simplest case, we can join two character vectors that are each of length 1 (i.e. join two
| words). Try paste("Hello", "world!", sep = " "), where the `sep` argument tells R that we want to
| separate the joined elements with a single space.

> paste("Hello", "world", sep = " ")
[1] "Hello world"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Enter paste("Hello", "world!", sep = " ") to join the two words "Hello" and "world", separated by a
| single space. There should be a single space between the double quotes in the `sep` argument to the
| paste() function.

> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| You are doing so well!

  |==============================================================================               |  84%
| For a slightly more complicated example, we can join two vectors, each of length 3. Use paste() to
| join the integer vector 1:3 with the character vector c("X", "Y", "Z"). This time, use sep = "" to
| leave no space between the joined elements.

> paste(1:3, c("X", "Y", "Z"))
[1] "1 X" "2 Y" "3 Z"

| Keep trying! Or, type info() for more options.

| Use paste(1:3, c("X", "Y", "Z"), sep = "") to see what happens when we join two vectors of equal
| length using paste().

> paste(1:3, c("X", "Y", "Z"), sep = "")
[1] "1X" "2Y" "3Z"

| You are really on a roll!

  |=================================================================================            |  87%
| What do you think will happen if our vectors are of different length? (Hint: we talked about this in
| a previous lesson.)

...

  |===================================================================================          |  89%
| Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined variable in R
| containing a character vector of all 26 letters in the English alphabet.

> paste(LETTERS, 1:4, sep = "-")
 [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2" "O-3" "P-4"
[17] "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"

| That's correct!

  |======================================================================================       |  92%
| Since the character vector LETTERS is longer than the numeric vector 1:4, R simply recycles, or
| repeats, 1:4 until it matches the length of LETTERS.

...

  |========================================================================================     |  95%
| Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character vector by the
| paste() function.

...

  |===========================================================================================  |  97%
| We'll discuss coercion in another lesson, but all it really means is that the numbers 1, 2, 3, and 4
| in the output above are no longer numbers to R, but rather characters "1", "2", "3", and "4".

...

  |=============================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?
  
  

  Selection: 5

|                                                                                  |   0%

| Missing values play an important role in statistics and data analysis. Often, missing
| values must not be ignored, but rather they should be carefully studied to see if there's
| an underlying pattern or cause for their missingness.

...

  |====                                                                              |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing' (in the statistical sense). In this lesson,
| we'll explore missing values further.

...

|========                                                                          |  10%
| Any operation involving NA generally yields NA as the result. To illustrate, let's create a vector c(44, NA, 5, NA) and
| assign it to a variable x.

> x <- c(44, NA, 5, NA)

| Nice work!

  |============                                                                      |  15%
| Now, let's multiply x by 3.

> x * 3
[1] 132  NA  15  NA

| You are doing so well!
  
  |================                                                                  |  20%
| Notice that the elements of the resulting vector that correspond with the NA values in x are also NA.

...

|====================                                                              |  25%
| To make things a little more interesting, lets create a vector containing 1000 draws from a standard normal distribution
| with y <- rnorm(1000).

> y <- rnorm(1000)

| Keep working like that and you'll get there!

  |=========================                                                         |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA, 1000)

| You're the best!

  |=============================                                                     |  35%
| Finally, let's select 100 elements at random from these 2000 values (combining y and z) such that we don't know how many
| NAs we'll wind up with or what positions they'll occupy in our final vector -- my_data <- sample(c(y, z), 100).

> my_data <- sample(c(y, z), 100)

| Perseverance, that's the answer.

|=================================                                                 |  40%
| Let's first ask the question of where our NAs are located in our data. The is.na() function tells us whether each element
| of a vector is NA. Call is.na() on my_data and assign the result to my_na.

> is.na(my_data)
  [1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
 [21]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
 [41] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE
 [61] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
 [81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE

| Not quite! Try again. Or, type info() for more options.

| Assign the result of is.na(my_data) to the variable my_na.

> my_na <- is.na(my_data)

| All that hard work is paying off!

  |=====================================                                             |  45%
| Now, print my_na to see what you came up with.

> my_na
  [1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
 [21]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
 [41] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE
 [61] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
 [81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE

| Nice work!

  |=========================================                                         |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is NA. Likewise, everywhere you see a FALSE, you
| know the corresponding element of my_data is one of our random draws from the standard normal distribution.

...

  |=============================================                                     |  55%
| In our previous discussion of logical operators, we introduced the `==` operator as a method of testing for equality
| between two objects. So, you might think the expression my_data == NA yields the same results as is.na(). Give it a try.

> my_data == NA
  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [41] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [81] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| You are doing so well!

  |=================================================                                 |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but just a placeholder for a quantity that is not
| available. Therefore the logical expression is incomplete and R has no choice but to return a vector of the same length as
| my_data that contains all NAs.

...

  |=====================================================                             |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious when using logical expressions anytime NAs
| might creep in, since a single NA value can derail the entire thing.

...

  |=========================================================                         |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a TRUE for every NA and FALSE for every numeric
| value, we can compute the total number of NAs in our data.

...

  |==============================================================                    |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as the number 1 and FALSE as the number 0.
| Therefore, if we take the sum of a bunch of TRUEs and FALSEs, we get the total number of TRUEs.

...

  |==================================================================                |  80%
| Let's give that a try here. Call the sum() function on my_na to count the total number of TRUEs in my_na, and thus the
| total number of NAs in my_data. Don't assign the result to a new variable.

> sum(my_na)
[1] 51

| Keep up the great work!

  |======================================================================            |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince ourselves that everything 'adds up'. Print my_data to
| the console.

> my_na
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[21]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
[41] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE
[61] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE

| Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.

| Print my_data to the console.

> print(my_na)
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[21]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
[41] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE
[61] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE

| Almost! Try again. Or, type info() for more options.

| Print my_data to the console.

> | Would you like to receive credit for completing this course on Coursera.org?
  Error: unexpected '|' in "|"
> print(my_na)
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE
[17] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[33] FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE
[49]  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
[65]  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
[97]  TRUE FALSE  TRUE FALSE

| Give it another try. Or, type info() for more options.

| Print my_data to the console.

> my_na
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE
[17] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[33] FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE
[49]  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
[65]  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[81]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
[97]  TRUE FALSE  TRUE FALSE

| Not quite! Try again. Or, type info() for more options.

| Print my_data to the console.

> skip()

| Entering the following correct answer for you...

> my_data
[1]          NA          NA  1.12217410          NA  0.31600800          NA          NA          NA
[9]  1.65039747          NA          NA          NA -0.84255772          NA  0.95827705 -0.34727696
[17]  0.79492412 -1.74247547  3.02858386 -0.89341666          NA          NA          NA          NA
[25] -0.52237550          NA  0.03368178  0.87935928  1.89190434          NA          NA          NA
[33] -0.05264303 -2.57514967          NA          NA          NA  1.46431825  1.63094614          NA
[41]  1.19923235 -0.10192283          NA -1.00315523  0.09188252  0.23367833 -0.21080350          NA
[49]          NA          NA          NA -0.41713031 -0.31497570          NA          NA -0.87265847
[57] -0.47607853          NA          NA -0.11028690  0.51995593  0.24379501 -0.24225704          NA
[65]          NA          NA  0.96982154 -1.07041887 -0.40176350          NA          NA  0.34788653
[73]          NA          NA  0.58149468  0.64230113 -1.85124282 -0.42607689          NA -0.36999130
[81]          NA          NA          NA -0.49406516          NA -1.13740449  0.67285699          NA
[89]  0.20803755          NA          NA          NA -1.39727926          NA          NA -0.11489075
[97]          NA  1.15406939          NA -1.05455920

| All that hard work is paying off!
  
  |==========================================================================        |  90%
| Now that we've got NAs down pat, let's look at a second type of missing value -- NaN, which stands
| for 'not a number'. To generate NaN, try dividing (using a forward slash) 0 by 0 now.

> 0/0
[1] NaN

| Excellent job!
  
  |==============================================================================    |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens if you subtract Inf
| from Inf?

> Inf - Inf
[1] NaN

| That's correct!
  
  |==================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

  
  Selection: 6

  |                                                                                                            |   0%

| In this lesson, we'll see how to extract elements from a vector based on some conditions that we specify.

...

  |===                                                                                                         |   3%
| For example, we may only be interested in the first 20 elements of a vector, or only the elements that are not NA,
| or only those that are positive or correspond to a specific variable of interest. By the end of this lesson, you'll
| know how to handle each of these scenarios.

...

  |======                                                                                                      |   5%
| I've created for you a vector called x that contains a random ordering of 20 numbers (from a standard normal
| distribution) and 20 NAs. Type x now to see what it looks like.

> x
 [1]          NA  1.06501468 -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000
[10] -0.50189139          NA          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401
[19]          NA          NA          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459
[28] -0.76123302  0.35830041  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340
[37] -0.03528904  0.45607986  0.41480890          NA

| Great job!

  |========                                                                                                    |   8%
| The way you tell R that you want to select some particular elements (i.e. a 'subset') from a vector is by placing
| an 'index vector' in square brackets immediately following the name of the vector.

...

  |===========                                                                                                 |  10%
| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1]         NA  1.0650147 -1.0154402         NA         NA         NA -0.5000978         NA  1.5970200 -0.5018914

| That's correct!

  |==============                                                                                              |  13%
| Index vectors come in four different flavors -- logical vectors, vectors of positive integers, vectors of negative
| integers, and vectors of character strings -- each of which we'll cover in this lesson.

...

  |=================                                                                                           |  15%
| Let's start by indexing with logical vectors. One common scenario when working with real-world data is that we want
| to extract all elements of a vector that are not NA (i.e. missing data). Recall that is.na(x) yields a vector of
| logical values the same length as x, with TRUEs corresponding to NA values in x and FALSEs corresponding to non-NA
| values in x.

...

  |===================                                                                                         |  18%
| What do you think x[is.na(x)] will give you?

1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 1

| You almost had it, but not quite. Try again.

| Remember that is.na(x) tells us where the NAs are in a vector. So if we subset x based on that, what do you expect
| to happen?

1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 3

| Excellent job!

  |======================                                                                                      |  21%
| Prove it to yourself by typing x[is.na(x)].

> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| Perseverance, that's the answer.

  |=========================                                                                                   |  23%
| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore,
| if we want to create a vector called y that contains all of the non-NA values from x, we can use y <- x[!is.na(x)].
| Give it a try.

> y <- x[!is.na(x)]

| Excellent job!

  |============================                                                                                |  26%
| Print y to the console.

> y
 [1]  1.06501468 -1.01544016 -0.50009784  1.59702000 -0.50189139  0.19426989 -0.03629176 -0.70004401  0.31480715
[10]  0.09485801  1.21443459 -0.76123302  0.35830041  1.55239268  0.42703795  0.35092912  0.10177340 -0.03528904
[19]  0.45607986  0.41480890

| You are doing so well!

  |==============================                                                                              |  28%
| Now that we've isolated the non-missing values of x and put them in y, we can subset y as we please.

...

  |=================================                                                                           |  31%
| Recall that the expression y > 0 will give us a vector of logical values the same length as y, with TRUEs
| corresponding to values of y that are greater than zero and FALSEs corresponding to values of y that are less than
| or equal to zero. What do you think y[y > 0] will give you?

1: A vector of all the negative elements of y
2: A vector of length 0
3: A vector of TRUEs and FALSEs
4: A vector of all NAs
5: A vector of all the positive elements of y

Selection: 3

| Give it another try.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of all NAs
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 4

| Try again. Getting it right on the first try is boring anyway!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of all NAs
2: A vector of all the positive elements of y
3: A vector of all the negative elements of y
4: A vector of TRUEs and FALSEs
5: A vector of length 0

Selection: 3

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all NAs
3: A vector of all the negative elements of y
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 3

| You're close...I can feel it! Try it again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of length 0
2: A vector of all the negative elements of y
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of TRUEs and FALSEs

Selection: 4

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of length 0
4: A vector of all the positive elements of y
5: A vector of all NAs

Selection: skip()
Enter an item from the menu, or 0 to exit
Selection: 5

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the positive elements of y
3: A vector of length 0
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 1

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of length 0
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 2

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of all the negative elements of y
2: A vector of TRUEs and FALSEs
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of length 0

Selection: 3

| Great job!

  |====================================                                                                        |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are also the positive elements of our
| original vector x.

> y[y>0]
 [1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| All that hard work is paying off!

  |=======================================                                                                     |  36%
| You might wonder why we didn't just start with x[x > 0] to isolate the positive elements of x. Try that now to see
| why.

> x[x >0]
 [1]         NA 1.06501468         NA         NA         NA         NA 1.59702000         NA         NA         NA
[11] 0.19426989         NA         NA         NA         NA         NA         NA 0.31480715 0.09485801         NA
[21]         NA 1.21443459 0.35830041 1.55239268 0.42703795         NA         NA         NA 0.35092912 0.10177340
[31] 0.45607986 0.41480890         NA

| You got it right!

  |==========================================                                                                  |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA > 0 evaluates to NA.
| Hence we get a bunch of NAs mixed in with our positive numbers when we do this.

...

  |============================================                                                                |  41%
| Combining our knowledge of logical operators with our new knowledge of subsetting, we could do this -- x[!is.na(x)
| & x > 0]. Try it out.

> x[!is.na(x) & x >0]
 [1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| Excellent job!

  |===============================================                                                             |  44%
| In this case, we request only values of x that are both non-missing AND greater than zero.

...

  |==================================================                                                          |  46%
| I've already shown you how to subset just the first ten values of x using x[1:10]. In this case, we're providing a
| vector of positive integers inside of the square brackets, which tells R to return only the elements of x numbered
| 1 through 10.

...

  |=====================================================                                                       |  49%
| Many programming languages use what's called 'zero-based indexing', which means that the first element of a vector
| is considered element 0. R uses 'one-based indexing', which (you guessed it!) means the first element of a vector
| is considered element 1.

...

  |=======================================================                                                     |  51%
| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c() function to specify the
| element numbers as a numeric vector.

> x[c(3, 5, 7)]
[1] -1.0154402         NA -0.5000978

| You are really on a roll!

  |==========================================================                                                  |  54%
| It's important that when using integer vectors to subset our vector x, we stick with the set of indexes {1, 2, ...,
| 40} since x only has 40 elements. What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x (i.e. x[0])
Error: unexpected symbol in "x (i.e. x"
> x(x[0])
Error in x(x[0]) : could not find function "x"
> skip()

| Entering the following correct answer for you...

> x[0]
numeric(0)

| You got it right!

  |=============================================================                                               |  56%
| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from doing this. What if we ask for
| the 3000th element of x? Try it out.

> x[3000]
[1] NA

| You got it right!

  |================================================================                                            |  59%
| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a cautionary tale. You should
| always make sure that what you are asking for is within the bounds of the vector you're working with.

...

  |==================================================================                                          |  62%
| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be pretty tedious to construct a
| vector containing all numbers 1 through 40 EXCEPT 2 and 10.

...

  |=====================================================================                                       |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x,
| x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2, -10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Excellent job!

  |========================================================================                                    |  67%
| A shorthand way of specifying multiple negative numbers is to put the negative sign out in front of the vector of
| positive numbers. Type x[-c(2, 10)] to get the exact same result.

> x[-c(2, 10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Keep working like that and you'll get there!

  |===========================================================================                                 |  69%
| So far, we've covered three types of index vectors -- logical, positive integer, and negative integer. The only
| remaining type requires us to introduce the concept of 'named' elements.

...

  |==============================================================================                              |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA).

> vect <-c(foo =11, bar = 2, norf = NA)

| Nice work!

  |================================================================================                            |  74%
| When we print vect to the console, you'll see that each element has a name. Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| All that practice is paying off!

  |===================================================================================                         |  77%
| We can also get the names of vect by passing vect as an argument to the names() function. Give that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

| You are amazing!

  |======================================================================================                      |  79%
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> vect2 <- c(11, 2, NA)

| You got it!

  |=========================================================================================                   |  82%
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo", "bar", "norf"). Go
| ahead.

> names(vect2) <- c("foo", "bar", "norf")

| You are amazing!

  |===========================================================================================                 |  85%
| Now, let's check that vect and vect2 are the same by passing them as arguments to the identical() function.

> identical(vect, vect2)
[1] TRUE

| All that hard work is paying off!

  |==============================================================================================              |  87%
| Indeed, vect and vect2 are identical named vectors.

...

  |=================================================================================================           |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of the following commands do you think
| would give us the second element of vect?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 3

| You almost had it, but not quite. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["2"]
2: vect["bar"]
3: vect[bar]

Selection: 1

| That's not exactly what I'm looking for. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 1

| You are quite good my friend!

  |====================================================================================================        |  92%
| Now, try it out.

> 
> 2
[1] 2

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Try vect["bar"].

> vect["bar"]
bar 
  2 

| All that hard work is paying off!

  |======================================================================================================      |  95%
| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo", "bar",)]
Error in c("foo", "bar", ) : argument 3 is empty
> names(vect[c("foo", "bar", "bar")])
[1] "foo" "bar" "bar"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Use vect[c("foo", "bar")] to get only the elements of vect named "foo" and "bar".

> vect[c("foo", "bar")]
foo bar 
 11   2 

| Keep up the great work!

  |=========================================================================================================   |  97%
| Now you know all four methods of subsetting data from vectors. Different approaches are best in different scenarios
| and when in doubt, try it out!

...

  |============================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 2

| Excellent work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
 4: Vectors                    5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 7

  |                                                                                                            |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they
| are used to store tabular data, with rows and columns.

...

  |===                                                                                                         |   3%
| The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can
| consist of many different classes of data.

...

  |======                                                                                                      |   6%
| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the result in a variable
| called my_vector.

> my_vector <- c(1:20)

| Keep trying! Or, type info() for more options.

| You learned about the `:` operator in the lesson on sequences. If you wanted to create a vector containing the
| numbers 1, 2, and 3 (in that order), you could use either c(1, 2, 3) or 1:3. In this case, we want the numbers 1
| through 20 stored in a variable called my_vector. Also, remember that you don't need the c() function when using
| `:`.

> my_vector <- 1:20

| You are really on a roll!

  |=========                                                                                                   |   8%
| View the contents of the vector you just created.

> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Perseverance, that's the answer.

  |============                                                                                                |  11%
| The dim() function tells us the 'dimensions' of an object. What happens if we do dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

| You're the best!

  |===============                                                                                             |  14%
| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just
| NULL), but we can find its length using the length() function. Try that now.

> length(my_vector)
[1] 20

| That's correct!

  |==================                                                                                          |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's give it a try. Type
| dim(my_vector) <- c(4, 5).

> dim(my_vector) <- c(4, 5)

| Excellent job!

  |=====================                                                                                       |  19%
| It's okay if that last command seemed a little strange to you. It should! The dim() function allows you to get OR
| set the `dim` attribute for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of
| my_vector.

...

  |========================                                                                                    |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.

> dim(my_vector)
[1] 4 5

| Your dedication is inspiring!

  |===========================                                                                                 |  25%
| Another way to see this is by calling the attributes() function on my_vector. Try it now.

> attributes(my_vector)
$dim
[1] 4 5


| You are really on a roll!

  |==============================                                                                              |  28%
| Just like in math class, when dealing with a 2-dimensional object (think rectangular table), the first number is
| the number of rows and the second is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.

...

  |=================================                                                                           |  31%
| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View the contents of
| my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| Great job!

  |====================================                                                                        |  33%
| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix" "array" 

| That's the answer I was looking for.

  |=======================================                                                                     |  36%
| Sure enough, my_vector is now a matrix. We should store it in a new variable that helps us remember what it is.
| Store the value of my_vector in a new variable called my_matrix.

> My_matrix <- c(my_vector)

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
| my_matrix <- my_vector.

> My_matrix <- my_vector

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
| my_matrix <- my_vector.

> my_matrix <- my_vector

| Excellent work!

  |==========================================                                                                  |  39%
| The example that we've used so far was meant to illustrate the point that a matrix is simply an atomic vector with
| a dimension attribute. A more direct method of creating the same matrix uses the matrix() function.

...

  |=============================================                                                               |  42%
| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix

| That's the answer I was looking for.

  |================================================                                                            |  44%
| Now, look at the documentation for the matrix function and see if you can figure out how to create a matrix
| containing the same numbers (1-20) and dimensions (4 rows, 5 columns) by calling the matrix() function. Store the
| result in a variable called my_matrix2.

> my_matrix2 <- matrix(1:20, now = 4, ncol = 5)
Error in matrix(1:20, now = 4, ncol = 5) : unused argument (now = 4)
> my_matrix2 <- matrix(1:2, nrow = 4, ncol = 5)

| Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.

| Call the matrix() function with three arguments -- 1:20, the number of rows, and the number of columns. Be sure to
| specify arguments by their proper names and store the result in my_matrix2 (not in my_matrix).

> skip()

| Entering the following correct answer for you...

> my_matrix2 <- matrix(1:20, nrow=4, ncol=5)

| Excellent work!

  |===================================================                                                         |  47%
| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical() function will tell us
| if its first two arguments are the same. Try it out.

> identical(my_matrix, my_matrix2)
[1] TRUE

| You are really on a roll!

  |======================================================                                                      |  50%
| Now, imagine that the numbers in our table represent some measurements from a clinical experiment, where each row
| represents one patient and each column represents one variable for which measurements were taken.

...

  |=========================================================                                                   |  53%
| We may want to label the rows, so that we know which numbers belong to each patient in the experiment. One way to
| do this is to add a column to the matrix, which contains the names of all four people.

...

  |============================================================                                                |  56%
| Let's start by creating a character vector containing the names of our patients -- Bill, Gina, Kelly, and Sean.
| Remember that double quotes tell R that something is a character string. Store the result in a variable called
| patients.

> patients <- c("Bill", "Gina", "Kelly", "Sean")

| Great job!

  |===============================================================                                             |  58%
| Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result in a new variable.
| Just call cbind() with two arguments -- the patients vector and my_matrix.

> cbind(patients, my_matrix)
     patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| That's correct!

  |==================================================================                                          |  61%
| Something is fishy about our result! It appears that combining the character vector with our matrix of numbers
| caused everything to be enclosed in double quotes. This means we're left with a matrix of character strings, which
| is no good.

...

  |=====================================================================                                       |  64%
| If you remember back to the beginning of this lesson, I told you that matrices can only contain ONE class of data.
| Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers
| to characters, hence the double quotes.

...

  |========================================================================                                    |  67%
| This is called 'implicit coercion', because we didn't ask for it. It just happened. But why didn't R just convert
| the names of our patients to numbers? I'll let you ponder that question on your own.

...

  |===========================================================================                                 |  69%
| So, we're still left with the question of how to include the names of our patients in the table without destroying
| the integrity of our numeric data. Try the following -- my_data <- data.frame(patients, my_matrix)

> my_data <- data.frame(patients, my_matrix)

| That's correct!

  |==============================================================================                              |  72%
| Now view the contents of my_data to see what we've come up with.

> my-data
Error: object 'my' not found
> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

| That's correct!

  |=================================================================================                           |  75%
| It looks like the data.frame() function allowed us to store our character vector of names right alongside our
| matrix of numbers. That's exactly what we were hoping for!

...

  |====================================================================================                        |  78%
| Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class
| `data.frame` that is composed of the original objects.

...

  |=======================================================================================                     |  81%
| Let's confirm this by calling the class() function on our newly created data frame.

> class(my_data)
[1] "data.frame"

| You are amazing!

  |==========================================================================================                  |  83%
| It's also possible to assign names to the individual rows and columns of a data frame, which presents another
| possible way of determining which row of values in our table belongs to each patient.

...

  |=============================================================================================               |  86%
| However, since we've already solved that problem, let's solve a different problem by assigning names to the columns
| of our data frame so that we know what type of measurement each column represents.

...

  |================================================================================================            |  89%
| Since we have six columns (including patient names), we'll need to first create a vector containing one element for
| each column. Create a character vector called cnames that contains the following values (in order) -- "patient",
| "age", "weight", "bp", "rating", "test".

> cnames <- c("patient", "age", "weight", "bp", "rating", "test")

| Your dedication is inspiring!

  |===================================================================================================         |  92%
| Now, use the colnames() function to set the `colnames` attribute for our data frame. This is similar to the way we
| used the dim() function earlier in this lesson.

> colnames(cnames)
NULL

| One more time. You can do it! Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data)
[1] "patients" "X1"       "X2"       "X3"       "X4"       "X5"      

| Not quite! Try again. Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data) <- cnames

| Nice work!

  |======================================================================================================      |  94%
| Let's see if that got the job done. Print the contents of my_data.

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| Your dedication is inspiring!

  |=========================================================================================================   |  97%
| In this lesson, you learned the basics of working with two very important and common data structures -- matrices
| and data frames. There's much more to learn and we'll be covering more advanced topics, particularly with respect
| to data frames, in future lessons.

...

  |============================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?
  
  
  Selection: 6

  |                                                                                                            |   0%

| In this lesson, we'll see how to extract elements from a vector based on some conditions that we specify.

...

  |===                                                                                                         |   3%
| For example, we may only be interested in the first 20 elements of a vector, or only the elements that are not NA,
| or only those that are positive or correspond to a specific variable of interest. By the end of this lesson, you'll
| know how to handle each of these scenarios.

...

  |======                                                                                                      |   5%
| I've created for you a vector called x that contains a random ordering of 20 numbers (from a standard normal
| distribution) and 20 NAs. Type x now to see what it looks like.

> x
 [1]          NA  1.06501468 -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000
[10] -0.50189139          NA          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401
[19]          NA          NA          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459
[28] -0.76123302  0.35830041  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340
[37] -0.03528904  0.45607986  0.41480890          NA

| Great job!

  |========                                                                                                    |   8%
| The way you tell R that you want to select some particular elements (i.e. a 'subset') from a vector is by placing
| an 'index vector' in square brackets immediately following the name of the vector.

...

  |===========                                                                                                 |  10%
| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1]         NA  1.0650147 -1.0154402         NA         NA         NA -0.5000978         NA  1.5970200 -0.5018914

| That's correct!

  |==============                                                                                              |  13%
| Index vectors come in four different flavors -- logical vectors, vectors of positive integers, vectors of negative
| integers, and vectors of character strings -- each of which we'll cover in this lesson.

...

  |=================                                                                                           |  15%
| Let's start by indexing with logical vectors. One common scenario when working with real-world data is that we want
| to extract all elements of a vector that are not NA (i.e. missing data). Recall that is.na(x) yields a vector of
| logical values the same length as x, with TRUEs corresponding to NA values in x and FALSEs corresponding to non-NA
| values in x.

...

  |===================                                                                                         |  18%
| What do you think x[is.na(x)] will give you?

1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 1

| You almost had it, but not quite. Try again.

| Remember that is.na(x) tells us where the NAs are in a vector. So if we subset x based on that, what do you expect
| to happen?

1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 3

| Excellent job!

  |======================                                                                                      |  21%
| Prove it to yourself by typing x[is.na(x)].

> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| Perseverance, that's the answer.

  |=========================                                                                                   |  23%
| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore,
| if we want to create a vector called y that contains all of the non-NA values from x, we can use y <- x[!is.na(x)].
| Give it a try.

> y <- x[!is.na(x)]

| Excellent job!

  |============================                                                                                |  26%
| Print y to the console.

> y
 [1]  1.06501468 -1.01544016 -0.50009784  1.59702000 -0.50189139  0.19426989 -0.03629176 -0.70004401  0.31480715
[10]  0.09485801  1.21443459 -0.76123302  0.35830041  1.55239268  0.42703795  0.35092912  0.10177340 -0.03528904
[19]  0.45607986  0.41480890

| You are doing so well!

  |==============================                                                                              |  28%
| Now that we've isolated the non-missing values of x and put them in y, we can subset y as we please.

...

  |=================================                                                                           |  31%
| Recall that the expression y > 0 will give us a vector of logical values the same length as y, with TRUEs
| corresponding to values of y that are greater than zero and FALSEs corresponding to values of y that are less than
| or equal to zero. What do you think y[y > 0] will give you?

1: A vector of all the negative elements of y
2: A vector of length 0
3: A vector of TRUEs and FALSEs
4: A vector of all NAs
5: A vector of all the positive elements of y

Selection: 3

| Give it another try.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of all NAs
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 4

| Try again. Getting it right on the first try is boring anyway!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of all NAs
2: A vector of all the positive elements of y
3: A vector of all the negative elements of y
4: A vector of TRUEs and FALSEs
5: A vector of length 0

Selection: 3

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all NAs
3: A vector of all the negative elements of y
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 3

| You're close...I can feel it! Try it again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of length 0
2: A vector of all the negative elements of y
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of TRUEs and FALSEs

Selection: 4

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of length 0
4: A vector of all the positive elements of y
5: A vector of all NAs

Selection: skip()
Enter an item from the menu, or 0 to exit
Selection: 5

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the positive elements of y
3: A vector of length 0
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 1

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of length 0
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 2

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of all the negative elements of y
2: A vector of TRUEs and FALSEs
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of length 0

Selection: 3

| Great job!

  |====================================                                                                        |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are also the positive elements of our
| original vector x.

> y[y>0]
 [1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| All that hard work is paying off!

  |=======================================                                                                     |  36%
| You might wonder why we didn't just start with x[x > 0] to isolate the positive elements of x. Try that now to see
| why.

> x[x >0]
 [1]         NA 1.06501468         NA         NA         NA         NA 1.59702000         NA         NA         NA
[11] 0.19426989         NA         NA         NA         NA         NA         NA 0.31480715 0.09485801         NA
[21]         NA 1.21443459 0.35830041 1.55239268 0.42703795         NA         NA         NA 0.35092912 0.10177340
[31] 0.45607986 0.41480890         NA

| You got it right!

  |==========================================                                                                  |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA > 0 evaluates to NA.
| Hence we get a bunch of NAs mixed in with our positive numbers when we do this.

...

  |============================================                                                                |  41%
| Combining our knowledge of logical operators with our new knowledge of subsetting, we could do this -- x[!is.na(x)
| & x > 0]. Try it out.

> x[!is.na(x) & x >0]
 [1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| Excellent job!

  |===============================================                                                             |  44%
| In this case, we request only values of x that are both non-missing AND greater than zero.

...

  |==================================================                                                          |  46%
| I've already shown you how to subset just the first ten values of x using x[1:10]. In this case, we're providing a
| vector of positive integers inside of the square brackets, which tells R to return only the elements of x numbered
| 1 through 10.

...

  |=====================================================                                                       |  49%
| Many programming languages use what's called 'zero-based indexing', which means that the first element of a vector
| is considered element 0. R uses 'one-based indexing', which (you guessed it!) means the first element of a vector
| is considered element 1.

...

  |=======================================================                                                     |  51%
| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c() function to specify the
| element numbers as a numeric vector.

> x[c(3, 5, 7)]
[1] -1.0154402         NA -0.5000978

| You are really on a roll!

  |==========================================================                                                  |  54%
| It's important that when using integer vectors to subset our vector x, we stick with the set of indexes {1, 2, ...,
| 40} since x only has 40 elements. What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x (i.e. x[0])
Error: unexpected symbol in "x (i.e. x"
> x(x[0])
Error in x(x[0]) : could not find function "x"
> skip()

| Entering the following correct answer for you...

> x[0]
numeric(0)

| You got it right!

  |=============================================================                                               |  56%
| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from doing this. What if we ask for
| the 3000th element of x? Try it out.

> x[3000]
[1] NA

| You got it right!

  |================================================================                                            |  59%
| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a cautionary tale. You should
| always make sure that what you are asking for is within the bounds of the vector you're working with.

...

  |==================================================================                                          |  62%
| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be pretty tedious to construct a
| vector containing all numbers 1 through 40 EXCEPT 2 and 10.

...

  |=====================================================================                                       |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x,
| x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2, -10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Excellent job!

  |========================================================================                                    |  67%
| A shorthand way of specifying multiple negative numbers is to put the negative sign out in front of the vector of
| positive numbers. Type x[-c(2, 10)] to get the exact same result.

> x[-c(2, 10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Keep working like that and you'll get there!

  |===========================================================================                                 |  69%
| So far, we've covered three types of index vectors -- logical, positive integer, and negative integer. The only
| remaining type requires us to introduce the concept of 'named' elements.

...

  |==============================================================================                              |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA).

> vect <-c(foo =11, bar = 2, norf = NA)

| Nice work!

  |================================================================================                            |  74%
| When we print vect to the console, you'll see that each element has a name. Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| All that practice is paying off!

  |===================================================================================                         |  77%
| We can also get the names of vect by passing vect as an argument to the names() function. Give that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

| You are amazing!

  |======================================================================================                      |  79%
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> vect2 <- c(11, 2, NA)

| You got it!

  |=========================================================================================                   |  82%
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo", "bar", "norf"). Go
| ahead.

> names(vect2) <- c("foo", "bar", "norf")

| You are amazing!

  |===========================================================================================                 |  85%
| Now, let's check that vect and vect2 are the same by passing them as arguments to the identical() function.

> identical(vect, vect2)
[1] TRUE

| All that hard work is paying off!

  |==============================================================================================              |  87%
| Indeed, vect and vect2 are identical named vectors.

...

  |=================================================================================================           |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of the following commands do you think
| would give us the second element of vect?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 3

| You almost had it, but not quite. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["2"]
2: vect["bar"]
3: vect[bar]

Selection: 1

| That's not exactly what I'm looking for. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 1

| You are quite good my friend!

  |====================================================================================================        |  92%
| Now, try it out.

> 
> 2
[1] 2

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Try vect["bar"].

> vect["bar"]
bar 
  2 

| All that hard work is paying off!

  |======================================================================================================      |  95%
| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo", "bar",)]
Error in c("foo", "bar", ) : argument 3 is empty
> names(vect[c("foo", "bar", "bar")])
[1] "foo" "bar" "bar"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Use vect[c("foo", "bar")] to get only the elements of vect named "foo" and "bar".

> vect[c("foo", "bar")]
foo bar 
 11   2 

| Keep up the great work!

  |=========================================================================================================   |  97%
| Now you know all four methods of subsetting data from vectors. Different approaches are best in different scenarios
| and when in doubt, try it out!

...

  |============================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 2

| Excellent work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
 4: Vectors                    5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 7

  |                                                                                                            |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they
| are used to store tabular data, with rows and columns.

...

  |===                                                                                                         |   3%
| The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can
| consist of many different classes of data.

...

  |======                                                                                                      |   6%
| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the result in a variable
| called my_vector.

> my_vector <- c(1:20)

| Keep trying! Or, type info() for more options.

| You learned about the `:` operator in the lesson on sequences. If you wanted to create a vector containing the
| numbers 1, 2, and 3 (in that order), you could use either c(1, 2, 3) or 1:3. In this case, we want the numbers 1
| through 20 stored in a variable called my_vector. Also, remember that you don't need the c() function when using
| `:`.

> my_vector <- 1:20

| You are really on a roll!

  |=========                                                                                                   |   8%
| View the contents of the vector you just created.

> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Perseverance, that's the answer.

  |============                                                                                                |  11%
| The dim() function tells us the 'dimensions' of an object. What happens if we do dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

| You're the best!

  |===============                                                                                             |  14%
| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just
| NULL), but we can find its length using the length() function. Try that now.

> length(my_vector)
[1] 20

| That's correct!

  |==================                                                                                          |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's give it a try. Type
| dim(my_vector) <- c(4, 5).

> dim(my_vector) <- c(4, 5)

| Excellent job!

  |=====================                                                                                       |  19%
| It's okay if that last command seemed a little strange to you. It should! The dim() function allows you to get OR
| set the `dim` attribute for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of
| my_vector.

...

  |========================                                                                                    |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.

> dim(my_vector)
[1] 4 5

| Your dedication is inspiring!

  |===========================                                                                                 |  25%
| Another way to see this is by calling the attributes() function on my_vector. Try it now.

> attributes(my_vector)
$dim
[1] 4 5


| You are really on a roll!

  |==============================                                                                              |  28%
| Just like in math class, when dealing with a 2-dimensional object (think rectangular table), the first number is
| the number of rows and the second is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.

...

  |=================================                                                                           |  31%
| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View the contents of
| my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| Great job!

  |====================================                                                                        |  33%
| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix" "array" 

| That's the answer I was looking for.

  |=======================================                                                                     |  36%
| Sure enough, my_vector is now a matrix. We should store it in a new variable that helps us remember what it is.
| Store the value of my_vector in a new variable called my_matrix.

> My_matrix <- c(my_vector)

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
| my_matrix <- my_vector.

> My_matrix <- my_vector

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
| my_matrix <- my_vector.

> my_matrix <- my_vector

| Excellent work!

  |==========================================                                                                  |  39%
| The example that we've used so far was meant to illustrate the point that a matrix is simply an atomic vector with
| a dimension attribute. A more direct method of creating the same matrix uses the matrix() function.

...

  |=============================================                                                               |  42%
| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix

| That's the answer I was looking for.

  |================================================                                                            |  44%
| Now, look at the documentation for the matrix function and see if you can figure out how to create a matrix
| containing the same numbers (1-20) and dimensions (4 rows, 5 columns) by calling the matrix() function. Store the
| result in a variable called my_matrix2.

> my_matrix2 <- matrix(1:20, now = 4, ncol = 5)
Error in matrix(1:20, now = 4, ncol = 5) : unused argument (now = 4)
> my_matrix2 <- matrix(1:2, nrow = 4, ncol = 5)

| Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.

| Call the matrix() function with three arguments -- 1:20, the number of rows, and the number of columns. Be sure to
| specify arguments by their proper names and store the result in my_matrix2 (not in my_matrix).

> skip()

| Entering the following correct answer for you...

> my_matrix2 <- matrix(1:20, nrow=4, ncol=5)

| Excellent work!

  |===================================================                                                         |  47%
| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical() function will tell us
| if its first two arguments are the same. Try it out.

> identical(my_matrix, my_matrix2)
[1] TRUE

| You are really on a roll!

  |======================================================                                                      |  50%
| Now, imagine that the numbers in our table represent some measurements from a clinical experiment, where each row
| represents one patient and each column represents one variable for which measurements were taken.

...

  |=========================================================                                                   |  53%
| We may want to label the rows, so that we know which numbers belong to each patient in the experiment. One way to
| do this is to add a column to the matrix, which contains the names of all four people.

...

  |============================================================                                                |  56%
| Let's start by creating a character vector containing the names of our patients -- Bill, Gina, Kelly, and Sean.
| Remember that double quotes tell R that something is a character string. Store the result in a variable called
| patients.

> patients <- c("Bill", "Gina", "Kelly", "Sean")

| Great job!

  |===============================================================                                             |  58%
| Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result in a new variable.
| Just call cbind() with two arguments -- the patients vector and my_matrix.

> cbind(patients, my_matrix)
     patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| That's correct!

  |==================================================================                                          |  61%
| Something is fishy about our result! It appears that combining the character vector with our matrix of numbers
| caused everything to be enclosed in double quotes. This means we're left with a matrix of character strings, which
| is no good.

...

  |=====================================================================                                       |  64%
| If you remember back to the beginning of this lesson, I told you that matrices can only contain ONE class of data.
| Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers
| to characters, hence the double quotes.

...

  |========================================================================                                    |  67%
| This is called 'implicit coercion', because we didn't ask for it. It just happened. But why didn't R just convert
| the names of our patients to numbers? I'll let you ponder that question on your own.

...

  |===========================================================================                                 |  69%
| So, we're still left with the question of how to include the names of our patients in the table without destroying
| the integrity of our numeric data. Try the following -- my_data <- data.frame(patients, my_matrix)

> my_data <- data.frame(patients, my_matrix)

| That's correct!

  |==============================================================================                              |  72%
| Now view the contents of my_data to see what we've come up with.

> my-data
Error: object 'my' not found
> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

| That's correct!

  |=================================================================================                           |  75%
| It looks like the data.frame() function allowed us to store our character vector of names right alongside our
| matrix of numbers. That's exactly what we were hoping for!

...

  |====================================================================================                        |  78%
| Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class
| `data.frame` that is composed of the original objects.

...

  |=======================================================================================                     |  81%
| Let's confirm this by calling the class() function on our newly created data frame.

> class(my_data)
[1] "data.frame"

| You are amazing!

  |==========================================================================================                  |  83%
| It's also possible to assign names to the individual rows and columns of a data frame, which presents another
| possible way of determining which row of values in our table belongs to each patient.

...

  |=============================================================================================               |  86%
| However, since we've already solved that problem, let's solve a different problem by assigning names to the columns
| of our data frame so that we know what type of measurement each column represents.

...

  |================================================================================================            |  89%
| Since we have six columns (including patient names), we'll need to first create a vector containing one element for
| each column. Create a character vector called cnames that contains the following values (in order) -- "patient",
| "age", "weight", "bp", "rating", "test".

> cnames <- c("patient", "age", "weight", "bp", "rating", "test")

| Your dedication is inspiring!

  |===================================================================================================         |  92%
| Now, use the colnames() function to set the `colnames` attribute for our data frame. This is similar to the way we
| used the dim() function earlier in this lesson.

> colnames(cnames)
NULL

| One more time. You can do it! Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data)
[1] "patients" "X1"       "X2"       "X3"       "X4"       "X5"      

| Not quite! Try again. Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data) <- cnames

| Nice work!

  |======================================================================================================      |  94%
| Let's see if that got the job done. Print the contents of my_data.

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| Your dedication is inspiring!

  |=========================================================================================================   |  97%
| In this lesson, you learned the basics of working with two very important and common data structures -- matrices
| and data frames. There's much more to learn and we'll be covering more advanced topics, particularly with respect
| to data frames, in future lessons.

...

  |============================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?
  
  Selection: 6

|                                                                                                            |   0%

| In this lesson, we'll see how to extract elements from a vector based on some conditions that we specify.

...

  |===                                                                                                         |   3%
| For example, we may only be interested in the first 20 elements of a vector, or only the elements that are not NA,
| or only those that are positive or correspond to a specific variable of interest. By the end of this lesson, you'll
| know how to handle each of these scenarios.

...

|======                                                                                                      |   5%
| I've created for you a vector called x that contains a random ordering of 20 numbers (from a standard normal
| distribution) and 20 NAs. Type x now to see what it looks like.

> x
 [1]          NA  1.06501468 -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000
[10] -0.50189139          NA          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401
[19]          NA          NA          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459
[28] -0.76123302  0.35830041  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340
[37] -0.03528904  0.45607986  0.41480890          NA

| Great job!

  |========                                                                                                    |   8%
| The way you tell R that you want to select some particular elements (i.e. a 'subset') from a vector is by placing
| an 'index vector' in square brackets immediately following the name of the vector.

...

  |===========                                                                                                 |  10%
| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1]         NA  1.0650147 -1.0154402         NA         NA         NA -0.5000978         NA  1.5970200 -0.5018914

| That's correct!
  
  |==============                                                                                              |  13%
| Index vectors come in four different flavors -- logical vectors, vectors of positive integers, vectors of negative
| integers, and vectors of character strings -- each of which we'll cover in this lesson.

...

  |=================                                                                                           |  15%
| Let's start by indexing with logical vectors. One common scenario when working with real-world data is that we want
| to extract all elements of a vector that are not NA (i.e. missing data). Recall that is.na(x) yields a vector of
| logical values the same length as x, with TRUEs corresponding to NA values in x and FALSEs corresponding to non-NA
| values in x.

...

|===================                                                                                         |  18%
| What do you think x[is.na(x)] will give you?
  
  1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 1

| You almost had it, but not quite. Try again.

| Remember that is.na(x) tells us where the NAs are in a vector. So if we subset x based on that, what do you expect
| to happen?
  
  1: A vector of TRUEs and FALSEs
2: A vector with no NAs
3: A vector of all NAs
4: A vector of length 0

Selection: 3

| Excellent job!
  
  |======================                                                                                      |  21%
| Prove it to yourself by typing x[is.na(x)].

> x[is.na(x)]
[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| Perseverance, that's the answer.

  |=========================                                                                                   |  23%
| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore,
| if we want to create a vector called y that contains all of the non-NA values from x, we can use y <- x[!is.na(x)].
| Give it a try.

> y <- x[!is.na(x)]

| Excellent job!

  |============================                                                                                |  26%
| Print y to the console.

> y
 [1]  1.06501468 -1.01544016 -0.50009784  1.59702000 -0.50189139  0.19426989 -0.03629176 -0.70004401  0.31480715
[10]  0.09485801  1.21443459 -0.76123302  0.35830041  1.55239268  0.42703795  0.35092912  0.10177340 -0.03528904
[19]  0.45607986  0.41480890

| You are doing so well!

  |==============================                                                                              |  28%
| Now that we've isolated the non-missing values of x and put them in y, we can subset y as we please.

...

|=================================                                                                           |  31%
| Recall that the expression y > 0 will give us a vector of logical values the same length as y, with TRUEs
| corresponding to values of y that are greater than zero and FALSEs corresponding to values of y that are less than
| or equal to zero. What do you think y[y > 0] will give you?
  
  1: A vector of all the negative elements of y
2: A vector of length 0
3: A vector of TRUEs and FALSEs
4: A vector of all NAs
5: A vector of all the positive elements of y

Selection: 3

| Give it another try.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?
  
  1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of all NAs
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 4

| Try again. Getting it right on the first try is boring anyway!
  
  | The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?
  
  1: A vector of all NAs
2: A vector of all the positive elements of y
3: A vector of all the negative elements of y
4: A vector of TRUEs and FALSEs
5: A vector of length 0

Selection: 3

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?
  
  1: A vector of TRUEs and FALSEs
2: A vector of all NAs
3: A vector of all the negative elements of y
4: A vector of length 0
5: A vector of all the positive elements of y

Selection: 3

| You're close...I can feel it! Try it again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of length 0
2: A vector of all the negative elements of y
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of TRUEs and FALSEs

Selection: 4

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the negative elements of y
3: A vector of length 0
4: A vector of all the positive elements of y
5: A vector of all NAs

Selection: skip()
Enter an item from the menu, or 0 to exit
Selection: 5

| Not quite! Try again.

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of all the positive elements of y
3: A vector of length 0
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 1

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of TRUEs and FALSEs
2: A vector of length 0
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of all the negative elements of y

Selection: 2

| One more time. You can do it!

| The logical expression y > 0 will give us TRUE for each element of y that is positive. Based on that, what do you
| think y[y > 0] will return?

1: A vector of all the negative elements of y
2: A vector of TRUEs and FALSEs
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of length 0

Selection: 3

| Great job!

  |====================================                                                                        |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are also the positive elements of our
| original vector x.

> y[y>0]
 [1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| All that hard work is paying off!

  |=======================================                                                                     |  36%
| You might wonder why we didn't just start with x[x > 0] to isolate the positive elements of x. Try that now to see
| why.

> x[x >0]
[1]         NA 1.06501468         NA         NA         NA         NA 1.59702000         NA         NA         NA
[11] 0.19426989         NA         NA         NA         NA         NA         NA 0.31480715 0.09485801         NA
[21]         NA 1.21443459 0.35830041 1.55239268 0.42703795         NA         NA         NA 0.35092912 0.10177340
[31] 0.45607986 0.41480890         NA

| You got it right!
  
  |==========================================                                                                  |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA > 0 evaluates to NA.
| Hence we get a bunch of NAs mixed in with our positive numbers when we do this.

...

|============================================                                                                |  41%
| Combining our knowledge of logical operators with our new knowledge of subsetting, we could do this -- x[!is.na(x)
                                                                                                           | & x > 0]. Try it out.

> x[!is.na(x) & x >0]
[1] 1.06501468 1.59702000 0.19426989 0.31480715 0.09485801 1.21443459 0.35830041 1.55239268 0.42703795 0.35092912
[11] 0.10177340 0.45607986 0.41480890

| Excellent job!
  
  |===============================================                                                             |  44%
| In this case, we request only values of x that are both non-missing AND greater than zero.

...

|==================================================                                                          |  46%
| I've already shown you how to subset just the first ten values of x using x[1:10]. In this case, we're providing a
| vector of positive integers inside of the square brackets, which tells R to return only the elements of x numbered
| 1 through 10.

...

|=====================================================                                                       |  49%
| Many programming languages use what's called 'zero-based indexing', which means that the first element of a vector
| is considered element 0. R uses 'one-based indexing', which (you guessed it!) means the first element of a vector
| is considered element 1.

...

  |=======================================================                                                     |  51%
| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c() function to specify the
| element numbers as a numeric vector.

> x[c(3, 5, 7)]
[1] -1.0154402         NA -0.5000978

| You are really on a roll!
  
  |==========================================================                                                  |  54%
| It's important that when using integer vectors to subset our vector x, we stick with the set of indexes {1, 2, ...,
| 40} since x only has 40 elements. What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x (i.e. x[0])
Error: unexpected symbol in "x (i.e. x"
> x(x[0])
Error in x(x[0]) : could not find function "x"
> skip()

| Entering the following correct answer for you...

> x[0]
numeric(0)

| You got it right!

  |=============================================================                                               |  56%
| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from doing this. What if we ask for
| the 3000th element of x? Try it out.

> x[3000]
[1] NA

| You got it right!
  
  |================================================================                                            |  59%
| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a cautionary tale. You should
| always make sure that what you are asking for is within the bounds of the vector you're working with.

...

|==================================================================                                          |  62%
| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be pretty tedious to construct a
| vector containing all numbers 1 through 40 EXCEPT 2 and 10.

...

  |=====================================================================                                       |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x,
| x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2, -10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Excellent job!

  |========================================================================                                    |  67%
| A shorthand way of specifying multiple negative numbers is to put the negative sign out in front of the vector of
| positive numbers. Type x[-c(2, 10)] to get the exact same result.

> x[-c(2, 10)]
 [1]          NA -1.01544016          NA          NA          NA -0.50009784          NA  1.59702000          NA
[10]          NA          NA  0.19426989          NA -0.03629176          NA -0.70004401          NA          NA
[19]          NA          NA  0.31480715  0.09485801          NA          NA  1.21443459 -0.76123302  0.35830041
[28]  1.55239268  0.42703795          NA          NA          NA  0.35092912  0.10177340 -0.03528904  0.45607986
[37]  0.41480890          NA

| Keep working like that and you'll get there!
  
  |===========================================================================                                 |  69%
| So far, we've covered three types of index vectors -- logical, positive integer, and negative integer. The only
| remaining type requires us to introduce the concept of 'named' elements.

...

  |==============================================================================                              |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA).

> vect <-c(foo =11, bar = 2, norf = NA)

| Nice work!

  |================================================================================                            |  74%
| When we print vect to the console, you'll see that each element has a name. Try it out.

> vect
foo  bar norf 
11    2   NA 

| All that practice is paying off!
  
  |===================================================================================                         |  77%
| We can also get the names of vect by passing vect as an argument to the names() function. Give that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

| You are amazing!
  
  |======================================================================================                      |  79%
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> vect2 <- c(11, 2, NA)

| You got it!
  
  |=========================================================================================                   |  82%
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo", "bar", "norf"). Go
| ahead.

> names(vect2) <- c("foo", "bar", "norf")

| You are amazing!
  
  |===========================================================================================                 |  85%
| Now, let's check that vect and vect2 are the same by passing them as arguments to the identical() function.

> identical(vect, vect2)
[1] TRUE

| All that hard work is paying off!

  |==============================================================================================              |  87%
| Indeed, vect and vect2 are identical named vectors.

...

  |=================================================================================================           |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of the following commands do you think
| would give us the second element of vect?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 3

| You almost had it, but not quite. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["2"]
2: vect["bar"]
3: vect[bar]

Selection: 1

| That's not exactly what I'm looking for. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command would get us that?

1: vect["bar"]
2: vect["2"]
3: vect[bar]

Selection: 1

| You are quite good my friend!

  |====================================================================================================        |  92%
| Now, try it out.

> 
> 2
[1] 2

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Try vect["bar"].

> vect["bar"]
bar 
2 

| All that hard work is paying off!
  
  |======================================================================================================      |  95%
| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo", "bar",)]
Error in c("foo", "bar", ) : argument 3 is empty
> names(vect[c("foo", "bar", "bar")])
[1] "foo" "bar" "bar"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Use vect[c("foo", "bar")] to get only the elements of vect named "foo" and "bar".

> vect[c("foo", "bar")]
foo bar 
 11   2 

| Keep up the great work!

  |=========================================================================================================   |  97%
| Now you know all four methods of subsetting data from vectors. Different approaches are best in different scenarios
| and when in doubt, try it out!

...

  |============================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 2

| Excellent work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!
  
  Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
4: Vectors                    5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 7

|                                                                                                            |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they
| are used to store tabular data, with rows and columns.

...

  |===                                                                                                         |   3%
| The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can
| consist of many different classes of data.

...

|======                                                                                                      |   6%
| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the result in a variable
| called my_vector.

> my_vector <- c(1:20)

| Keep trying! Or, type info() for more options.

| You learned about the `:` operator in the lesson on sequences. If you wanted to create a vector containing the
| numbers 1, 2, and 3 (in that order), you could use either c(1, 2, 3) or 1:3. In this case, we want the numbers 1
| through 20 stored in a variable called my_vector. Also, remember that you don't need the c() function when using
| `:`.

> my_vector <- 1:20

| You are really on a roll!
  
  |=========                                                                                                   |   8%
| View the contents of the vector you just created.

> my_vector
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Perseverance, that's the answer.

  |============                                                                                                |  11%
| The dim() function tells us the 'dimensions' of an object. What happens if we do dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

| You're the best!
  
  |===============                                                                                             |  14%
| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just
| NULL), but we can find its length using the length() function. Try that now.

> length(my_vector)
[1] 20

| That's correct!
                                                                                                      
                                                                                                      |==================                                                                                          |  17%
                                                                                                    | Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's give it a try. Type
                                                                                                    | dim(my_vector) <- c(4, 5).
                                                                                                    
                                                                                                    > dim(my_vector) <- c(4, 5)
                                                                                                    
                                                                                                    | Excellent job!
                                                                                                      
                                                                                                      |=====================                                                                                       |  19%
                                                                                                    | It's okay if that last command seemed a little strange to you. It should! The dim() function allows you to get OR
| set the `dim` attribute for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of
| my_vector.

...

  |========================                                                                                    |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.
                                                                                                    
                                                                                                    > dim(my_vector)
                                                                                                    [1] 4 5
                                                                                                    
                                                                                                    | Your dedication is inspiring!
                                                                                                      
                                                                                                      |===========================                                                                                 |  25%
                                                                                                    | Another way to see this is by calling the attributes() function on my_vector. Try it now.
                                                                                                    
                                                                                                    > attributes(my_vector)
                                                                                                    $dim
                                                                                                    [1] 4 5
                                                                                                    
                                                                                                    
                                                                                                    | You are really on a roll!
                                                                                                      
                                                                                                      |==============================                                                                              |  28%
                                                                                                    | Just like in math class, when dealing with a 2-dimensional object (think rectangular table), the first number is
                                                                                                    | the number of rows and the second is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=================================                                                                           |  31%
                                                                                                    | But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View the contents of
| my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| Great job!

  |====================================                                                                        |  33%
| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix" "array" 

| That's the answer I was looking for.
                                                                                                    
                                                                                                    |=======================================                                                                     |  36%
                                                                                                    | Sure enough, my_vector is now a matrix. We should store it in a new variable that helps us remember what it is.
                                                                                                    | Store the value of my_vector in a new variable called my_matrix.
                                                                                                    
                                                                                                    > My_matrix <- c(my_vector)
                                                                                                    
                                                                                                    | Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
| my_matrix <- my_vector.

> My_matrix <- my_vector

| You're close...I can feel it! Try it again. Or, type info() for more options.
                                                                                                    
                                                                                                    | Since we can't just change the name of our my_vector variable, we'll assign its value to a new variable with
                                                                                                    | my_matrix <- my_vector.
                                                                                                    
                                                                                                    > my_matrix <- my_vector
                                                                                                    
                                                                                                    | Excellent work!
                                                                                                      
                                                                                                      |==========================================                                                                  |  39%
                                                                                                    | The example that we've used so far was meant to illustrate the point that a matrix is simply an atomic vector with
| a dimension attribute. A more direct method of creating the same matrix uses the matrix() function.

...

  |=============================================                                                               |  42%
| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix

| That's the answer I was looking for.
                                                                                                    
                                                                                                    |================================================                                                            |  44%
                                                                                                    | Now, look at the documentation for the matrix function and see if you can figure out how to create a matrix
                                                                                                    | containing the same numbers (1-20) and dimensions (4 rows, 5 columns) by calling the matrix() function. Store the
                                                                                                    | result in a variable called my_matrix2.
                                                                                                    
                                                                                                    > my_matrix2 <- matrix(1:20, now = 4, ncol = 5)
                                                                                                    Error in matrix(1:20, now = 4, ncol = 5) : unused argument (now = 4)
                                                                                                    > my_matrix2 <- matrix(1:2, nrow = 4, ncol = 5)
                                                                                                    
                                                                                                    | Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.
                                                                                                    
                                                                                                    | Call the matrix() function with three arguments -- 1:20, the number of rows, and the number of columns. Be sure to
                                                                                                    | specify arguments by their proper names and store the result in my_matrix2 (not in my_matrix).
                                                                                                    
                                                                                                    > skip()
                                                                                                    
                                                                                                    | Entering the following correct answer for you...
                                                                                                    
                                                                                                    > my_matrix2 <- matrix(1:20, nrow=4, ncol=5)
                                                                                                    
                                                                                                    | Excellent work!
                                                                                                      
                                                                                                      |===================================================                                                         |  47%
                                                                                                    | Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical() function will tell us
| if its first two arguments are the same. Try it out.

> identical(my_matrix, my_matrix2)
[1] TRUE

| You are really on a roll!

  |======================================================                                                      |  50%
| Now, imagine that the numbers in our table represent some measurements from a clinical experiment, where each row
| represents one patient and each column represents one variable for which measurements were taken.

...

  |=========================================================                                                   |  53%
| We may want to label the rows, so that we know which numbers belong to each patient in the experiment. One way to
| do this is to add a column to the matrix, which contains the names of all four people.

...

  |============================================================                                                |  56%
| Let's start by creating a character vector containing the names of our patients -- Bill, Gina, Kelly, and Sean.
                                                                                                    | Remember that double quotes tell R that something is a character string. Store the result in a variable called
                                                                                                    | patients.
                                                                                                    
                                                                                                    > patients <- c("Bill", "Gina", "Kelly", "Sean")
                                                                                                    
                                                                                                    | Great job!
                                                                                                      
                                                                                                      |===============================================================                                             |  58%
                                                                                                    | Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result in a new variable.
                                                                                                    | Just call cbind() with two arguments -- the patients vector and my_matrix.
                                                                                                    
                                                                                                    > cbind(patients, my_matrix)
                                                                                                    patients                       
                                                                                                    [1,] "Bill"   "1" "5" "9"  "13" "17"
                                                                                                    [2,] "Gina"   "2" "6" "10" "14" "18"
                                                                                                    [3,] "Kelly"  "3" "7" "11" "15" "19"
                                                                                                    [4,] "Sean"   "4" "8" "12" "16" "20"
                                                                                                    
                                                                                                    | That's correct!

  |==================================================================                                          |  61%
| Something is fishy about our result! It appears that combining the character vector with our matrix of numbers
| caused everything to be enclosed in double quotes. This means we're left with a matrix of character strings, which
                                                                                                    | is no good.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=====================================================================                                       |  64%
                                                                                                    | If you remember back to the beginning of this lesson, I told you that matrices can only contain ONE class of data.
                                                                                                    | Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers
                                                                                                    | to characters, hence the double quotes.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |========================================================================                                    |  67%
                                                                                                    | This is called 'implicit coercion', because we didn't ask for it. It just happened. But why didn't R just convert
                                                                                                    | the names of our patients to numbers? I'll let you ponder that question on your own.

...

  |===========================================================================                                 |  69%
| So, we're still left with the question of how to include the names of our patients in the table without destroying
                                                                                                    | the integrity of our numeric data. Try the following -- my_data <- data.frame(patients, my_matrix)
                                                                                                    
                                                                                                    > my_data <- data.frame(patients, my_matrix)
                                                                                                    
                                                                                                    | That's correct!

  |==============================================================================                              |  72%
| Now view the contents of my_data to see what we've come up with.
                                                                                                    
                                                                                                    > my-data
                                                                                                    Error: object 'my' not found
                                                                                                    > my_data
                                                                                                    patients X1 X2 X3 X4 X5
                                                                                                    1     Bill  1  5  9 13 17
                                                                                                    2     Gina  2  6 10 14 18
                                                                                                    3    Kelly  3  7 11 15 19
                                                                                                    4     Sean  4  8 12 16 20
                                                                                                    
                                                                                                    | That's correct!

  |=================================================================================                           |  75%
| It looks like the data.frame() function allowed us to store our character vector of names right alongside our
| matrix of numbers. That's exactly what we were hoping for!
                                                                                                      
                                                                                                      ...
                                                                                                    
                                                                                                    |====================================================================================                        |  78%
                                                                                                    | Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class
                                                                                                    | `data.frame` that is composed of the original objects.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=======================================================================================                     |  81%
                                                                                                    | Let's confirm this by calling the class() function on our newly created data frame.

> class(my_data)
[1] "data.frame"

| You are amazing!

  |==========================================================================================                  |  83%
| It's also possible to assign names to the individual rows and columns of a data frame, which presents another
                                                                                                    | possible way of determining which row of values in our table belongs to each patient.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=============================================================================================               |  86%
                                                                                                    | However, since we've already solved that problem, let's solve a different problem by assigning names to the columns
                                                                                                    | of our data frame so that we know what type of measurement each column represents.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |================================================================================================            |  89%
                                                                                                    | Since we have six columns (including patient names), we'll need to first create a vector containing one element for
| each column. Create a character vector called cnames that contains the following values (in order) -- "patient",
| "age", "weight", "bp", "rating", "test".

> cnames <- c("patient", "age", "weight", "bp", "rating", "test")

| Your dedication is inspiring!

  |===================================================================================================         |  92%
| Now, use the colnames() function to set the `colnames` attribute for our data frame. This is similar to the way we
| used the dim() function earlier in this lesson.

> colnames(cnames)
NULL

| One more time. You can do it! Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data)
[1] "patients" "X1"       "X2"       "X3"       "X4"       "X5"      

| Not quite! Try again. Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data) <- cnames

| Nice work!

  |======================================================================================================      |  94%
| Let's see if that got the job done. Print the contents of my_data.
                                                                                                    
                                                                                                    > my_data
                                                                                                    patient age weight bp rating test
                                                                                                    1    Bill   1      5  9     13   17
                                                                                                    2    Gina   2      6 10     14   18
                                                                                                    3   Kelly   3      7 11     15   19
                                                                                                    4    Sean   4      8 12     16   20
                                                                                                    
                                                                                                    | Your dedication is inspiring!
                                                                                                      
                                                                                                      |=========================================================================================================   |  97%
                                                                                                    | In this lesson, you learned the basics of working with two very important and common data structures -- matrices
                                                                                                    | and data frames. There's much more to learn and we'll be covering more advanced topics, particularly with respect
                                                                                                    | to data frames, in future lessons.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |============================================================================================================| 100%
                                                                                                    | Would you like to receive credit for completing this course on Coursera.org?
                                                                                                      Selection: 8
                                                                                                    
                                                                                                    |                                                                                                                      |   0%
                                                                                                    
                                                                                                    | This lesson is meant to be a short introduction to logical operations in R.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |==                                                                                                                    |   2%
                                                                                                    | There are two logical values in R, also called boolean values. They are TRUE and FALSE. In R you can construct logical
                                                                                                    | expressions which will evaluate to either TRUE or FALSE.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=====                                                                                                                 |   4%
                                                                                                    | Many of the questions in this lesson will involve evaluating logical expressions. It may be useful to open up a second R
                                                                                                    | terminal where you can experiment with some of these expressions.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=======                                                                                                               |   6%
                                                                                                    | Creating logical expressions requires logical operators. You're probably familiar with arithmetic operators like `+`, `-`,
| `*`, and `/`. The first logical operator we are going to discuss is the equality operator, represented by two equals signs
| `==`. Use the equality operator below to find out if TRUE is equal to TRUE.

> TRUE == TRUE
[1] TRUE

| You are amazing!

  |==========                                                                                                            |   8%
| Just like arithmetic, logical expressions can be grouped by parenthesis so that the entire expression (TRUE == TRUE) == TRUE
| evaluates to TRUE.

...

  |============                                                                                                          |  10%
| To test out this property, try evaluating (FALSE == TRUE) == FALSE .

> (FALSE == TRUE) == FALSE
[1] TRUE

| Great job!

  |==============                                                                                                        |  12%
| The equality operator can also be used to compare numbers. Use `==` to see if 6 is equal to 7.

> 6 == 7
[1] FALSE

| Excellent work!

  |=================                                                                                                     |  14%
| The previous expression evaluates to FALSE because 6 is less than 7. Thankfully, there are inequality operators that allow us
| to test if a value is less than or greater than another value.

...

  |===================                                                                                                   |  16%
| The less than operator `<` tests whether the number on the left side of the operator (called the left operand) is less than
| the number on the right side of the operator (called the right operand). Write an expression to test whether 6 is less than
| 7.

> 6<7
[1] TRUE

| Great job!

  |======================                                                                                                |  18%
| There is also a less-than-or-equal-to operator `<=` which tests whether the left operand is less than or equal to the right
| operand. Write an expression to test whether 10 is less than or equal to 10.

> 10 <= 10
[1] TRUE

| That's a job well done!
                                                                                                      
                                                                                                      |========================                                                                                              |  20%
                                                                                                    | Keep in mind that there are the corresponding greater than `>` and greater-than-or-equal-to `>=` operators.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |==========================                                                                                            |  22%
                                                                                                    | Which of the following evaluates to FALSE?
                                                                                                      
                                                                                                      1: 7 == 7
                                                                                                    2: 0 > -36
                                                                                                    3: 6 < 8
                                                                                                    4: 9 >= 10
                                                                                                    
                                                                                                    Selection: 4
                                                                                                    
                                                                                                    | Great job!
                                                                                                      
                                                                                                      |=============================                                                                                         |  24%
                                                                                                    | Which of the following evaluates to TRUE?
                                                                                                      
                                                                                                      1: 9 >= 10
                                                                                                    2: -6 > -7
                                                                                                    3: 7 == 9
                                                                                                    4: 57 < 8
                                                                                                    
                                                                                                    Selection: 2
                                                                                                    
                                                                                                    | All that hard work is paying off!
                                                                                                      
                                                                                                      |===============================                                                                                       |  27%
                                                                                                    | The next operator we will discuss is the 'not equals' operator represented by `!=`. Not equals tests whether two values are
                                                                                                    | unequal, so TRUE != FALSE evaluates to TRUE. Like the equality operator, `!=` can also be used with numbers. Try writing an
                                                                                                    | expression to see if 5 is not equal to 7.
                                                                                                    
                                                                                                    > 5 != 7
                                                                                                    [1] TRUE
                                                                                                    
                                                                                                    | Excellent work!
                                                                                                      
                                                                                                      |==================================                                                                                    |  29%
                                                                                                    | In order to negate boolean expressions you can use the NOT operator. An exclamation point `!` will cause !TRUE (say: not
                                                                                                                                                                                                                      | true) to evaluate to FALSE and !FALSE (say: not false) to evaluate to TRUE. Try using the NOT operator and the equals
                                                                                                    | operator to find the opposite of whether 5 is equal to 7.
                                                                                                    
                                                                                                    > 5 !TRUE 7
                                                                                                    Error: unexpected '!' in "5 !"
                                                                                                    > 5!=7
                                                                                                    [1] TRUE
                                                                                                    
                                                                                                    | Not exactly. Give it another go. Or, type info() for more options.
                                                                                                    
                                                                                                    | This expression may be a little tricky, so think about negating the expression 5 == 7 (all you need is an exclamation point
                                                                                                                                                                                             | in front).
                                                                                                    
                                                                                                    > 5 ==7
                                                                                                    [1] FALSE
                                                                                                    
                                                                                                    | Not quite right, but keep trying. Or, type info() for more options.
                                                                                                    
                                                                                                    | This expression may be a little tricky, so think about negating the expression 5 == 7 (all you need is an exclamation point
                                                                                                                                                                                             | in front).
                                                                                                    
                                                                                                    > 5!==7
                                                                                                    Error: unexpected '=' in "5!=="
                                                                                                    > 5 != 7
                                                                                                    [1] TRUE
                                                                                                    
                                                                                                    | One more time. You can do it! Or, type info() for more options.
                                                                                                    
                                                                                                    | This expression may be a little tricky, so think about negating the expression 5 == 7 (all you need is an exclamation point
                                                                                                                                                                                             | in front).
                                                                                                    
                                                                                                    > skip()
                                                                                                    
                                                                                                    | Entering the following correct answer for you...
                                                                                                    
                                                                                                    > !5 == 7
                                                                                                    [1] TRUE
                                                                                                    
                                                                                                    | That's the answer I was looking for.

  |====================================                                                                                  |  31%
| Let's take a moment to review. The equals operator `==` tests whether two boolean values or numbers are equal, the not equals
                                                                                                    | operator `!=` tests whether two boolean values or numbers are unequal, and the NOT operator `!` negates logical expressions
                                                                                                    | so that TRUE expressions become FALSE and FALSE expressions become TRUE.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=======================================                                                                               |  33%
                                                                                                    | Which of the following evaluates to FALSE?
                                                                                                      
                                                                                                      1: !(0 >= -1)
                                                                                                    2: 7 != 8
                                                                                                    3: 9 < 10
                                                                                                    4: !FALSE
                                                                                                    
                                                                                                    Selection: 4
                                                                                                    
                                                                                                    | Not exactly. Give it another go.
                                                                                                    
                                                                                                    | If you need to, you can evaluate each expression in a separate R session to find the correct answer.
                                                                                                    
                                                                                                    1: !(0 >= -1)
                                                                                                    2: 7 != 8
                                                                                                    3: !FALSE
                                                                                                    4: 9 < 10
                                                                                                    
                                                                                                    Selection: 1
                                                                                                    
                                                                                                    | Your dedication is inspiring!
                                                                                                      
                                                                                                      |=========================================                                                                             |  35%
                                                                                                    | What do you think the following expression will evaluate to?: (TRUE != FALSE) == !(6 == 7)
                                                                                                    
                                                                                                    1: %>%
                                                                                                      2: TRUE
                                                                                                    3: Can there be objective truth when programming?
                                                                                                      4: FALSE
                                                                                                    
                                                                                                    Selection: 4
                                                                                                    
                                                                                                    | One more time. You can do it!
                                                                                                      
                                                                                                      | Try to evaluate each expression in isolation and build up an answer.
                                                                                                    
                                                                                                    1: TRUE
                                                                                                    2: FALSE
                                                                                                    3: %>%
                                                                                                      4: Can there be objective truth when programming?
                                                                                                      
                                                                                                      Selection: 1
                                                                                                    
                                                                                                    | Perseverance, that's the answer.

  |===========================================                                                                           |  37%
| At some point you may need to examine relationships between multiple logical expressions. This is where the AND operator and
| the OR operator come in.

...

  |==============================================                                                                        |  39%
| Let's look at how the AND operator works. There are two AND operators in R, `&` and `&&`. Both operators work similarly, if
                                                                                                    | the right and left operands of AND are both TRUE the entire expression is TRUE, otherwise it is FALSE. For example, TRUE &
                                                                                                      | TRUE evaluates to TRUE. Try typing FALSE & FALSE to how it is evaluated.
                                                                                                    
                                                                                                    > FALSE & FALSE
                                                                                                    [1] FALSE
                                                                                                    
                                                                                                    | All that practice is paying off!
                                                                                                      
                                                                                                      |================================================                                                                      |  41%
                                                                                                    | You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND only evaluates the first member of a
                                                                                                    | vector. Let's test both for practice. Type the expression TRUE & c(TRUE, FALSE, FALSE).

> TRUE & c(TRUE, FALSE, FALSE)
[1]  TRUE FALSE FALSE

| Nice work!

  |===================================================                                                                   |  43%
| The OR operator follows a similar set of rules. The `|` version of OR evaluates OR across an entire vector, while the `||`
| version of OR only evaluates the first member of a vector.

...

  |=====================================================                                                                 |  45%
| An expression using the OR operator will evaluate to TRUE if the left operand or the right operand is TRUE. If both are TRUE,
| the expression will evaluate to TRUE, however if neither are TRUE, then the expression will be FALSE.

...

  |=======================================================                                                               |  47%
| Let's test out the vectorized version of the OR operator. Type the expression TRUE | c(TRUE, FALSE, FALSE).
                                                                                                    
                                                                                                    > TRi
                                                                                                    Error: object 'TRi' not found
                                                                                                    > TRUE | c(TRUE, FALSE, FALSE)
                                                                                                    [1] TRUE TRUE TRUE
                                                                                                    
                                                                                                    | All that practice is paying off!
                                                                                                      
                                                                                                      |==========================================================                                                            |  49%
                                                                                                    | Now let's try out the non-vectorized version of the OR operator. Type the expression TRUE || c(TRUE, FALSE, FALSE).

> TRUE || c(TRUE, FALSE, FALSE)
[1] TRUE

| That's the answer I was looking for.
                                                                                                    
                                                                                                    |============================================================                                                          |  51%
                                                                                                    | Logical operators can be chained together just like arithmetic operators. The expressions: `6 != 10 && FALSE && 1 >= 2` or
                                                                                                    | `TRUE || 5 < 9.3 || FALSE` are perfectly normal to see.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |===============================================================                                                       |  53%
                                                                                                    | As you may recall, arithmetic has an order of operations and so do logical expressions. All AND operators are evaluated
                                                                                                    | before OR operators. Let's look at an example of an ambiguous case. Type: 5 > 8 || 6 != 8 && 4 > 3.9

> 5 > 8 || 6!= && 4 >3.9
Error: unexpected '&&' in "5 > 8 || 6!= &&"
> 5 >8 || 6 != 8 && 4 > 3.9
[1] TRUE

| Keep up the great work!

  |=================================================================                                                     |  55%
| Let's walk through the order of operations in the above case. First the left and right operands of the AND operator are
                                                                                                    | evaluated. 6 is not equal 8, 4 is greater than 3.9, therefore both operands are TRUE so the resulting expression `TRUE &&
                                                                                                      | TRUE` evaluates to TRUE. Then the left operand of the OR operator is evaluated: 5 is not greater than 8 so the entire
                                                                                                    | expression is reduced to FALSE || TRUE. Since the right operand of this expression is TRUE the entire expression evaluates to
                                                                                                    | TRUE.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |===================================================================                                                   |  57%
                                                                                                    | Which one of the following expressions evaluates to TRUE?
                                                                                                      
                                                                                                      1: TRUE && FALSE || 9 >= 4 && 3 < 6
                                                                                                    2: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
                                                                                                    3: FALSE || TRUE && FALSE
                                                                                                    4: TRUE && 62 < 62 && 44 >= 44
                                                                                                    
                                                                                                    Selection: 1
                                                                                                    
                                                                                                    | That's the answer I was looking for.

  |======================================================================                                                |  59%
| Which one of the following expressions evaluates to FALSE?

1: FALSE || TRUE && 6 != 4 || 9 > 4
2: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 4

| Not quite! Try again.

| Try to evaluate each expression in isolation and build up an answer.

1: 6 >= -9 && !(6 > 7) && !(!TRUE)
2: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: FALSE || TRUE && 6 != 4 || 9 > 4

Selection: 2

| Excellent job!

  |========================================================================                                              |  61%
| Now that you're familiar with R's logical operators you can take advantage of a few functions that R provides for dealing
| with logical expressions.

...

  |===========================================================================                                           |  63%
| The function isTRUE() takes one argument. If that argument evaluates to TRUE, the function will return TRUE. Otherwise, the
| function will return FALSE. Try using this function by typing: isTRUE(6 > 4)

> isTRUE(6 >4)
[1] TRUE

| That's the answer I was looking for.
                                                                                                    
                                                                                                    |=============================================================================                                         |  65%
                                                                                                    | Which of the following evaluates to TRUE?
                                                                                                      
                                                                                                      1: isTRUE(NA)
                                                                                                    2: isTRUE(!TRUE)
                                                                                                    3: isTRUE(3)
                                                                                                    4: !isTRUE(8 != 5)
                                                                                                    5: !isTRUE(4 < 3)
                                                                                                    
                                                                                                    Selection: 3
                                                                                                    
                                                                                                    | That's not exactly what I'm looking for. Try again.
                                                                                                    
                                                                                                    | isTRUE() will only return TRUE if the statement passed to it as an argument is TRUE.
                                                                                                    
                                                                                                    1: !isTRUE(8 != 5)
                                                                                                    2: isTRUE(3)
                                                                                                    3: isTRUE(!TRUE)
                                                                                                    4: !isTRUE(4 < 3)
                                                                                                    5: isTRUE(NA)
                                                                                                    
                                                                                                    Selection: 5
                                                                                                    
                                                                                                    | You almost had it, but not quite. Try again.
                                                                                                    
                                                                                                    | isTRUE() will only return TRUE if the statement passed to it as an argument is TRUE.
                                                                                                    
                                                                                                    1: isTRUE(3)
                                                                                                    2: !isTRUE(4 < 3)
                                                                                                    3: isTRUE(NA)
                                                                                                    4: isTRUE(!TRUE)
                                                                                                    5: !isTRUE(8 != 5)
                                                                                                    
                                                                                                    Selection: 3
                                                                                                    
                                                                                                    | Not quite right, but keep trying.
                                                                                                    
                                                                                                    | isTRUE() will only return TRUE if the statement passed to it as an argument is TRUE.
                                                                                                    
                                                                                                    1: isTRUE(3)
                                                                                                    2: isTRUE(NA)
                                                                                                    3: !isTRUE(4 < 3)
                                                                                                    4: !isTRUE(8 != 5)
                                                                                                    5: isTRUE(!TRUE)
                                                                                                    
                                                                                                    Selection: 5
                                                                                                    
                                                                                                    | Not quite! Try again.
                                                                                                    
                                                                                                    | isTRUE() will only return TRUE if the statement passed to it as an argument is TRUE.
                                                                                                    
                                                                                                    1: !isTRUE(4 < 3)
                                                                                                    2: !isTRUE(8 != 5)
                                                                                                    3: isTRUE(3)
                                                                                                    4: isTRUE(NA)
                                                                                                    5: isTRUE(!TRUE)
                                                                                                    
                                                                                                    Selection: 1
                                                                                                    
                                                                                                    | Great job!
                                                                                                      
                                                                                                      |===============================================================================                                       |  67%
                                                                                                    | The function identical() will return TRUE if the two R objects passed to it as arguments are identical. Try out the
                                                                                                    | identical() function by typing: identical('twins', 'twins')
                                                                                                    
                                                                                                    > identical('twins', 'twins')
                                                                                                    [1] TRUE
                                                                                                    
                                                                                                    | Keep working like that and you'll get there!

  |==================================================================================                                    |  69%
| Which of the following evaluates to TRUE?

1: !identical(7, 7)
2: identical('hello', 'Hello')
3: identical(4, 3.1)
4: identical(5 > 4, 3 < 3.1)

Selection: 1

| Nice try, but that's not exactly what I was hoping for. Try again.
                                                                                                    
                                                                                                    | identical() will only evaluate to TRUE if its arguments are exactly the same.
                                                                                                    
                                                                                                    1: identical(4, 3.1)
                                                                                                    2: !identical(7, 7)
                                                                                                    3: identical('hello', 'Hello')
                                                                                                    4: identical(5 > 4, 3 < 3.1)
                                                                                                    
                                                                                                    Selection: 3
                                                                                                    
                                                                                                    | Nice try, but that's not exactly what I was hoping for. Try again.

| identical() will only evaluate to TRUE if its arguments are exactly the same.

1: identical('hello', 'Hello')
2: !identical(7, 7)
3: identical(4, 3.1)
4: identical(5 > 4, 3 < 3.1)

Selection: 4

| You got it right!

  |====================================================================================                                  |  71%
| You should also be aware of the xor() function, which takes two arguments. The xor() function stands for exclusive OR. If one
| argument evaluates to TRUE and one argument evaluates to FALSE, then this function will return TRUE, otherwise it will return
| FALSE. Try out the xor() function by typing: xor(5 == 6, !FALSE)

> xor(5 == 6, !FALSE)
[1] TRUE

| You are amazing!

  |=======================================================================================                               |  73%
| 5 == 6 evaluates to FALSE, !FALSE evaluates to TRUE, so xor(FALSE, TRUE) evaluates to TRUE. On the other hand if the first
| argument was changed to 5 == 5 and the second argument was unchanged then both arguments would have been TRUE, so xor(TRUE,
| TRUE) would have evaluated to FALSE.

...

  |=========================================================================================                             |  76%
| Which of the following evaluates to FALSE?

1: xor(!!TRUE, !!FALSE)
2: xor(!isTRUE(TRUE), 6 > -1)
3: xor(4 >= 9, 8 != 8.0)
4: xor(identical(xor, 'xor'), 7 == 7.0)

Selection: 3

| That's a job well done!
                                                                                                      
                                                                                                      |============================================================================================                          |  78%
                                                                                                    | For the next few questions, we're going to need to create a vector of integers called ints. Create this vector by typing:
| ints <- sample(10)

> ints <- sample(10)

| You got it!

  |==============================================================================================                        |  80%
| Now simply display the contents of ints.

> ints
 [1]  4  2  1  9  7  8 10  3  6  5

| Keep working like that and you'll get there!
                                                                                                      
                                                                                                      |================================================================================================                      |  82%
                                                                                                    | The vector `ints` is a random sampling of integers from 1 to 10 without replacement. Let's say we wanted to ask some logical
| questions about contents of ints. If we type ints > 5, we will get a logical vector corresponding to whether each element of
| ints is greater than 5. Try typing: ints > 5

> ints > 5
 [1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE

| Excellent work!

  |===================================================================================================                   |  84%
| We can use the resulting logical vector to ask other questions about ints. The which() function takes a logical vector as an
| argument and returns the indices of the vector that are TRUE. For example which(c(TRUE, FALSE, TRUE)) would return the vector
| c(1, 3).

...

  |=====================================================================================================                 |  86%
| Use the which() function to find the indices of ints that are greater than 7.

> which(ints > 7)
[1] 4 6 7

| You are doing so well!

  |========================================================================================================              |  88%
| Which of the following commands would produce the indices of the elements in ints that are less than or equal to 2?

1: which(ints <= 2)
2: which(ints < 2)
3: ints <= 2
4: ints < 2

Selection: 1

| You're the best!
                                                                                                      
                                                                                                      |==========================================================================================================            |  90%
                                                                                                    | Like the which() function, the functions any() and all() take logical vectors as their argument. The any() function will
                                                                                                    | return TRUE if one or more of the elements in the logical vector is TRUE. The all() function will return TRUE if every
                                                                                                    | element in the logical vector is TRUE.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |============================================================================================================          |  92%
                                                                                                    | Use the any() function to see if any of the elements of ints are less than zero.
                                                                                                    
                                                                                                    > any(ints <0)
                                                                                                    [1] FALSE
                                                                                                    
                                                                                                    | Perseverance, that's the answer.

  |===============================================================================================================       |  94%
| Use the all() function to see if all of the elements of ints are greater than zero.

> all(ints >0)
[1] TRUE

| That's correct!
                                                                                                      
                                                                                                      |=================================================================================================================     |  96%
                                                                                                    | Which of the following evaluates to TRUE?
                                                                                                      
                                                                                                      1: any(ints == 10)
                                                                                                    2: all(ints == 10)
                                                                                                    3: any(ints == 2.5)
                                                                                                    4: all(c(TRUE, FALSE, TRUE))
                                                                                                    
                                                                                                    Selection: 1
                                                                                                    
                                                                                                    | That's the answer I was looking for.

  |====================================================================================================================  |  98%
| That's all for this introduction to logic in R. If you really want to see what you can do with logic, check out the control
                                                                                                    | flow lesson!
                                                                                                      
                                                                                                      Selection: 10
                                                                                                    
                                                                                                    |                                                              |   0%
                                                                                                    
                                                                                                    | In this lesson, you'll learn how to use lapply() and sapply(), the
| two most important members of R's *apply family of functions, also
                                                                                                    | known as loop functions.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=                                                             |   2%
                                                                                                    | These powerful functions, along with their close relatives (vapply() and tapply(), among others) offer a concise
                                                                                                    | and convenient means of implementing the Split-Apply-Combine strategy for data analysis.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |==                                                            |   4%
                                                                                                    | Each of the *apply functions will SPLIT up some data into smaller pieces, APPLY a function to each piece, then
                                                                                                    | COMBINE the results. A more detailed discussion of this strategy is found in Hadley Wickham's Journal of
| Statistical Software paper titled 'The Split-Apply-Combine Strategy for Data Analysis'.

...

  |====                                                          |   6%
| Throughout this lesson, we'll use the Flags dataset from the UCI Machine Learning Repository. This dataset contains
                                                                                                    | details of various nations and their flags. More information may be found here:
                                                                                                      | http://archive.ics.uci.edu/ml/datasets/Flags
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |=====                                                         |   8%
                                                                                                    | Let's jump right in so you can get a feel for how these special functions work!

...

  |======                                                        |  10%
| I've stored the dataset in a variable called flags. Type head(flags) to preview the first six lines (i.e. the
                                                                                                       | 'head') of the dataset.
                                                                                                    
                                                                                                    > head(flags)
                                                                                                    name landmass zone area population language religion bars stripes colours red green blue gold white black
                                                                                                    1    Afghanistan        5    1  648         16       10        2    0       3       5   1     1    0    1     1     1
                                                                                                    2        Albania        3    1   29          3        6        6    0       0       3   1     0    0    1     0     1
                                                                                                    3        Algeria        4    1 2388         20        8        2    2       0       3   1     1    0    0     1     0
                                                                                                    4 American-Samoa        6    3    0          0        1        1    0       0       5   1     0    1    1     1     0
                                                                                                    5        Andorra        3    1    0          0        6        0    3       0       3   1     0    1    1     0     0
                                                                                                    6         Angola        4    2 1247          7       10        5    0       2       3   1     0    0    1     0     1
                                                                                                    orange mainhue circles crosses saltires quarters sunstars crescent triangle icon animate text topleft botright
                                                                                                    1      0   green       0       0        0        0        1        0        0    1       0    0   black    green
                                                                                                    2      0     red       0       0        0        0        1        0        0    0       1    0     red      red
                                                                                                    3      0   green       0       0        0        0        1        1        0    0       0    0   green    white
                                                                                                    4      1    blue       0       0        0        0        0        0        1    1       1    0    blue      red
                                                                                                    5      0    gold       0       0        0        0        0        0        0    0       0    0    blue      red
                                                                                                    6      0     red       0       0        0        0        1        0        0    1       0    0     red    black
                                                                                                    
                                                                                                    | Excellent job!
                                                                                                      
                                                                                                      |=======                                                       |  12%
                                                                                                    | You may need to scroll up to see all of the output. Now, let's check out the dimensions of the dataset using
| dim(flags).

> dim(flags)
[1] 194  30

| All that practice is paying off!

  |=========                                                     |  14%
| This tells us that there are 194 rows, or observations, and 30 columns, or variables. Each observation is a country
| and each variable describes some characteristic of that country or its flag. To open a more complete description of
| the dataset in a separate text file, type viewinfo() when you are back at the prompt (>).

...

  |==========                                                    |  16%
| As with any dataset, we'd like to know in what format the variables have been stored. In other words, what is the
                                                                                                    | 'class' of each variable? What happens if we do class(flags)? Try it out.
                                                                                                    
                                                                                                    > class(flags)
                                                                                                    [1] "data.frame"
                                                                                                    
                                                                                                    | That's a job well done!

  |===========                                                   |  18%
| That just tells us that the entire dataset is stored as a 'data.frame', which doesn't answer our question. What we
                                                                                                    | really need is to call the class() function on each individual column. While we could do this manually (i.e. one
                                                                                                                                                                                                              | column at a time) it's much faster if we can automate the process. Sounds like a loop!

...

  |============                                                  |  20%
| The lapply() function takes a list as input, applies a function to each element of the list, then returns a list of
| the same length as the original one. Since a data frame is really just a list of vectors (you can see this with
| as.list(flags)), we can use lapply() to apply the class() function to each column of the flags dataset. Let's see
                                                                                                    | it in action!
                                                                                                      
                                                                                                      ...
                                                                                                    
                                                                                                    |==============                                                |  22%
                                                                                                    | Type cls_list <- lapply(flags, class) to apply the class() function to each column of the flags dataset and store
                                                                                                    | the result in a variable called cls_list. Note that you just supply the name of the function you want to apply
                                                                                                    | (i.e. class), without the usual parentheses after it.
                                                                                                    
                                                                                                    > cls_list <- lapply(flags, class)
                                                                                                    
                                                                                                    | Keep working like that and you'll get there!

  |===============                                               |  24%
| Type cls_list to view the result.

> cls_list
$name
[1] "character"

$landmass
[1] "integer"

$zone
[1] "integer"

$area
[1] "integer"

$population
[1] "integer"

$language
[1] "integer"

$religion
[1] "integer"

$bars
[1] "integer"

$stripes
[1] "integer"

$colours
[1] "integer"

$red
[1] "integer"

$green
[1] "integer"

$blue
[1] "integer"

$gold
[1] "integer"

$white
[1] "integer"

$black
[1] "integer"

$orange
[1] "integer"

$mainhue
[1] "character"

$circles
[1] "integer"

$crosses
[1] "integer"

$saltires
[1] "integer"

$quarters
[1] "integer"

$sunstars
[1] "integer"

$crescent
[1] "integer"

$triangle
[1] "integer"

$icon
[1] "integer"

$animate
[1] "integer"

$text
[1] "integer"

$topleft
[1] "character"

$botright
[1] "character"


| That's the answer I was looking for.
                                                                                                    
                                                                                                    |================                                              |  26%
                                                                                                    | The 'l' in 'lapply' stands for 'list'. Type class(cls_list) to confirm that lapply() returned a list.
                                                                                                    
                                                                                                    > class(cls_list)
                                                                                                    [1] "list"
                                                                                                    
                                                                                                    | You are really on a roll!
                                                                                                      
                                                                                                      |=================                                             |  28%
                                                                                                    | As expected, we got a list of length 30 -- one element for each variable/column. The output would be considerably
                                                                                                    | more compact if we could represent it as a vector instead of a list.
                                                                                                    
                                                                                                    ...
                                                                                                    
                                                                                                    |===================                                           |  30%
                                                                                                    | You may remember from a previous lesson that lists are most helpful for storing multiple classes of data. In this
                                                                                                    | case, since every element of the list returned by lapply() is a character vector of length one (i.e. "integer" and
                                                                                                                                                                                                      | "vector"), cls_list can be simplified to a character vector. To do this manually, type as.character(cls_list).
                                                                                                    
                                                                                                    > as.character(cls_list)
                                                                                                    [1] "character" "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"  
                                                                                                    [10] "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "character"
                                                                                                    [19] "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"  
                                                                                                    [28] "integer"   "character" "character"
                                                                                                    
                                                                                                    | You are quite good my friend!
                                                                                                      
                                                                                                      |====================                                          |  32%
                                                                                                    | sapply() allows you to automate this process by calling lapply() behind the scenes, but then attempting to simplify
                                                                                                    | (hence the 's' in 'sapply') the result for you. Use sapply() the same way you used lapply() to get the class of
                                                                                                    | each column of the flags dataset and store the result in cls_vect. If you need help, type ?sapply to bring up the
                                                                                                    | documentation.
                                                                                                    
                                                                                                    > sapply(cls_list)
                                                                                                    Error in sapply(cls_list) : argument "FUN" is missing, with no default
                                                                                                    > cls_vect <- sapply(flags, class)
                                                                                                    
                                                                                                    | Nice work!
                                                                                                      
                                                                                                      |=====================                                         |  34%
                                                                                                    | Use class(cls_vect) to confirm that sapply() simplified the result to a character vector.
                                                                                                    
                                                                                                    > class(cls_vect)
                                                                                                    [1] "character"
                                                                                                    
                                                                                                    | All that practice is paying off!
                                                                                                      
                                                                                                      |======================                                        |  36%
                                                                                                    | In general, if the result is a list where every element is of length one, then sapply() returns a vector. If the
                                                                                                    | result is a list where every element is a vector of the same length (> 1), sapply() returns a matrix. If sapply()
                                                                                                    | can't figure things out, then it just returns a list, no different from what lapply() would give you.

...

  |========================                                      |  38%
| Let's practice using lapply() and sapply() some more!
                                                                                                      
                                                                                                      ...
                                                                                                    
                                                                                                    |=========================                                     |  40%
                                                                                                    | Columns 11 through 17 of our dataset are indicator variables, each representing a different color. The value of the
                                                                                                    | indicator variable is 1 if the color is present in a country's flag and 0 otherwise.

...

  |==========================                                    |  42%
| Therefore, if we want to know the total number of countries (in our dataset) with, for example, the color orange on
| their flag, we can just add up all of the 1s and 0s in the 'orange' column. Try sum(flags$orange) to see this.

> sum(flags$orange)
[1] 26

| You got it right!

  |===========================                                   |  44%
| Now we want to repeat this operation for each of the colors recorded in the dataset.

...

  |=============================                                 |  46%
| First, use flag_colors <- flags[, 11:17] to extract the columns containing the color data and store them in a new
| data frame called flag_colors. (Note the comma before 11:17. This subsetting command tells R that we want all rows,
| but only columns 11 through 17.)

> flag_colors <- flags[, 11:17]

| Nice work!

  |==============================                                |  48%
| Use the head() function to look at the first 6 lines of flag_colors.

> head(flag_colors)
  red green blue gold white black orange
1   1     1    0    1     1     1      0
2   1     0    0    1     0     1      0
3   1     1    0    0     1     0      0
4   1     0    1    1     1     0      1
5   1     0    1    1     0     0      0
6   1     0    0    1     0     1      0

| You got it!

  |===============================                               |  50%
| To get a list containing the sum of each column of flag_colors, call the lapply() function with two arguments. The
| first argument is the object over which we are looping (i.e. flag_colors) and the second argument is the name of
| the function we wish to apply to each column (i.e. sum). Remember that the second argument is just the name of the
| function with no parentheses, etc.

> lapply(flag_colors, sum)
$red
[1] 153

$green
[1] 91

$blue
[1] 99

$gold
[1] 91

$white
[1] 146

$black
[1] 52

$orange
[1] 26


| Excellent work!

  |================================                              |  52%
| This tells us that of the 194 flags in our dataset, 153 contain the color red, 91 contain green, 99 contain blue,
| and so on.

...

  |=================================                             |  54%
| The result is a list, since lapply() always returns a list. Each element of this list is of length one, so the
| result can be simplified to a vector by calling sapply() instead of lapply(). Try it now.

> sapply(flag_colors, sum)
   red  green   blue   gold  white  black orange 
   153     91     99     91    146     52     26 

| You are amazing!

  |===================================                           |  56%
| Perhaps it's more informative to find the proportion of flags (out of 194) containing each color. Since each column
                                                                                                    | is just a bunch of 1s and 0s, the arithmetic mean of each column will give us the proportion of 1s. (If it's not
| clear why, think of a simpler situation where you have three 1s and two 0s -- (1 + 1 + 1 + 0 + 0)/5 = 3/5 = 0.6).

...

  |====================================                          |  58%
| Use sapply() to apply the mean() function to each column of flag_colors. Remember that the second argument to
| sapply() should just specify the name of the function (i.e. mean) that you want to apply.

> sapply(flag_colors, mean)
      red     green      blue      gold     white     black    orange 
0.7886598 0.4690722 0.5103093 0.4690722 0.7525773 0.2680412 0.1340206 

| You are amazing!

  |=====================================                         |  60%
| In the examples we've looked at so far, sapply() has been able to simplify the result to vector. That's because
| each element of the list returned by lapply() was a vector of length one. Recall that sapply() instead returns a
| matrix when each element of the list returned by lapply() is a vector of the same length (> 1).

...

  |======================================                        |  62%
| To illustrate this, let's extract columns 19 through 23 from the flags dataset and store the result in a new data
                                                                                                                                                                                                           | frame called flag_shapes. flag_shapes <- flags[, 19:23] will do it.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > flag_shapes <- flags[, 19:23]
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Nice work!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |========================================                      |  64%
                                                                                                                                                                                                           | Each of these columns (i.e. variables) represents the number of times a particular shape or design appears on a
                                                                                                                                                                                                           | country's flag. We are interested in the minimum and maximum number of times each shape or design appears.

...

  |=========================================                     |  66%
| The range() function returns the minimum and maximum of its first argument, which should be a numeric vector. Use
| lapply() to apply the range function to each column of flag_shapes. Don't worry about storing the result in a new
                                                                                                                                                                                                           | variable. By now, we know that lapply() always returns a list.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > lapply(flag_shapes, range)
                                                                                                                                                                                                           $circles
                                                                                                                                                                                                           [1] 0 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crosses
                                                                                                                                                                                                           [1] 0 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $saltires
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $quarters
                                                                                                                                                                                                           [1] 0 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $sunstars
                                                                                                                                                                                                           [1]  0 50
                                                                                                                                                                                                           
                                                                                                                                                                                                           
                                                                                                                                                                                                           | That's a job well done!

  |==========================================                    |  68%
| Do the same operation, but using sapply() and store the result in a variable called shape_mat.

> shape_mat <- sapply(flag_shapes, range)

| You're the best!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |===========================================                   |  70%
                                                                                                                                                                                                           | View the contents of shape_mat.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > shape_mat
                                                                                                                                                                                                           circles crosses saltires quarters sunstars
                                                                                                                                                                                                           [1,]       0       0        0        0        0
                                                                                                                                                                                                           [2,]       4       2        1        4       50
                                                                                                                                                                                                           
                                                                                                                                                                                                           | You are quite good my friend!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |=============================================                 |  72%
                                                                                                                                                                                                           | Each column of shape_mat gives the minimum (row 1) and maximum (row 2) number of times its respective shape appears
                                                                                                                                                                                                           | in different flags.
                                                                                                                                                                                                           
                                                                                                                                                                                                           ...
                                                                                                                                                                                                           
                                                                                                                                                                                                           |==============================================                |  74%
                                                                                                                                                                                                           | Use the class() function to confirm that shape_mat is a matrix.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > class(shape_mat)
                                                                                                                                                                                                           [1] "matrix" "array" 
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Great job!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |===============================================               |  76%
                                                                                                                                                                                                           | As we've seen, sapply() always attempts to simplify the result given by lapply(). It has been successful in doing
| so for each of the examples we've looked at so far. Let's look at an example where sapply() can't figure out how to
                                                                                                                                                                                                           | simplify the result and thus returns a list, no different from lapply().
                                                                                                                                                                                                           
                                                                                                                                                                                                           ...
                                                                                                                                                                                                           
                                                                                                                                                                                                           |================================================              |  78%
                                                                                                                                                                                                           | When given a vector, the unique() function returns a vector with all duplicate elements removed. In other words,
                                                                                                                                                                                                           | unique() returns a vector of only the 'unique' elements. To see how it works, try unique(c(3, 4, 5, 5, 5, 6, 6)).
                                                                                                                                                                                                           
                                                                                                                                                                                                           > unique(c(3, 4, 5, 5, 6, 6))
                                                                                                                                                                                                           [1] 3 4 5 6
                                                                                                                                                                                                           
                                                                                                                                                                                                           | One more time. You can do it! Or, type info() for more options.
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Do unique(c(3, 4, 5, 5, 5, 6, 6)) to see how the unique() function works.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > unique(c(3, 4, 5, 5, 5, 6, 6))
                                                                                                                                                                                                           [1] 3 4 5 6
                                                                                                                                                                                                           
                                                                                                                                                                                                           | You are amazing!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |==================================================            |  80%
                                                                                                                                                                                                           | We want to know the unique values for each variable in the flags dataset. To accomplish this, use lapply() to apply
                                                                                                                                                                                                           | the unique() function to each column in the flags dataset, storing the result in a variable called unique_vals.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > unique_vals <- lapply(flags, unique)
                                                                                                                                                                                                           
                                                                                                                                                                                                           | You are amazing!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |===================================================           |  82%
                                                                                                                                                                                                           | Print the value of unique_vals to the console.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > unique_vals
                                                                                                                                                                                                           $name
                                                                                                                                                                                                           [1] "Afghanistan"              "Albania"                  "Algeria"                  "American-Samoa"          
                                                                                                                                                                                                           [5] "Andorra"                  "Angola"                   "Anguilla"                 "Antigua-Barbuda"         
                                                                                                                                                                                                           [9] "Argentina"                "Argentine"                "Australia"                "Austria"                 
                                                                                                                                                                                                           [13] "Bahamas"                  "Bahrain"                  "Bangladesh"               "Barbados"                
                                                                                                                                                                                                           [17] "Belgium"                  "Belize"                   "Benin"                    "Bermuda"                 
                                                                                                                                                                                                           [21] "Bhutan"                   "Bolivia"                  "Botswana"                 "Brazil"                  
                                                                                                                                                                                                           [25] "British-Virgin-Isles"     "Brunei"                   "Bulgaria"                 "Burkina"                 
                                                                                                                                                                                                           [29] "Burma"                    "Burundi"                  "Cameroon"                 "Canada"                  
                                                                                                                                                                                                           [33] "Cape-Verde-Islands"       "Cayman-Islands"           "Central-African-Republic" "Chad"                    
                                                                                                                                                                                                           [37] "Chile"                    "China"                    "Colombia"                 "Comorro-Islands"         
                                                                                                                                                                                                           [41] "Congo"                    "Cook-Islands"             "Costa-Rica"               "Cuba"                    
                                                                                                                                                                                                           [45] "Cyprus"                   "Czechoslovakia"           "Denmark"                  "Djibouti"                
                                                                                                                                                                                                           [49] "Dominica"                 "Dominican-Republic"       "Ecuador"                  "Egypt"                   
                                                                                                                                                                                                           [53] "El-Salvador"              "Equatorial-Guinea"        "Ethiopia"                 "Faeroes"                 
                                                                                                                                                                                                           [57] "Falklands-Malvinas"       "Fiji"                     "Finland"                  "France"                  
                                                                                                                                                                                                           [61] "French-Guiana"            "French-Polynesia"         "Gabon"                    "Gambia"                  
                                                                                                                                                                                                           [65] "Germany-DDR"              "Germany-FRG"              "Ghana"                    "Gibraltar"               
                                                                                                                                                                                                           [69] "Greece"                   "Greenland"                "Grenada"                  "Guam"                    
                                                                                                                                                                                                           [73] "Guatemala"                "Guinea"                   "Guinea-Bissau"            "Guyana"                  
                                                                                                                                                                                                           [77] "Haiti"                    "Honduras"                 "Hong-Kong"                "Hungary"                 
                                                                                                                                                                                                           [81] "Iceland"                  "India"                    "Indonesia"                "Iran"                    
                                                                                                                                                                                                           [85] "Iraq"                     "Ireland"                  "Israel"                   "Italy"                   
                                                                                                                                                                                                           [89] "Ivory-Coast"              "Jamaica"                  "Japan"                    "Jordan"                  
                                                                                                                                                                                                           [93] "Kampuchea"                "Kenya"                    "Kiribati"                 "Kuwait"                  
                                                                                                                                                                                                           [97] "Laos"                     "Lebanon"                  "Lesotho"                  "Liberia"                 
                                                                                                                                                                                                           [101] "Libya"                    "Liechtenstein"            "Luxembourg"               "Malagasy"                
                                                                                                                                                                                                           [105] "Malawi"                   "Malaysia"                 "Maldive-Islands"          "Mali"                    
                                                                                                                                                                                                           [109] "Malta"                    "Marianas"                 "Mauritania"               "Mauritius"               
                                                                                                                                                                                                           [113] "Mexico"                   "Micronesia"               "Monaco"                   "Mongolia"                
                                                                                                                                                                                                           [117] "Montserrat"               "Morocco"                  "Mozambique"               "Nauru"                   
                                                                                                                                                                                                           [121] "Nepal"                    "Netherlands"              "Netherlands-Antilles"     "New-Zealand"             
                                                                                                                                                                                                           [125] "Nicaragua"                "Niger"                    "Nigeria"                  "Niue"                    
                                                                                                                                                                                                           [129] "North-Korea"              "North-Yemen"              "Norway"                   "Oman"                    
                                                                                                                                                                                                           [133] "Pakistan"                 "Panama"                   "Papua-New-Guinea"         "Parguay"                 
                                                                                                                                                                                                           [137] "Peru"                     "Philippines"              "Poland"                   "Portugal"                
                                                                                                                                                                                                           [141] "Puerto-Rico"              "Qatar"                    "Romania"                  "Rwanda"                  
                                                                                                                                                                                                           [145] "San-Marino"               "Sao-Tome"                 "Saudi-Arabia"             "Senegal"                 
                                                                                                                                                                                                           [149] "Seychelles"               "Sierra-Leone"             "Singapore"                "Soloman-Islands"         
                                                                                                                                                                                                           [153] "Somalia"                  "South-Africa"             "South-Korea"              "South-Yemen"             
                                                                                                                                                                                                           [157] "Spain"                    "Sri-Lanka"                "St-Helena"                "St-Kitts-Nevis"          
                                                                                                                                                                                                           [161] "St-Lucia"                 "St-Vincent"               "Sudan"                    "Surinam"                 
                                                                                                                                                                                                           [165] "Swaziland"                "Sweden"                   "Switzerland"              "Syria"                   
                                                                                                                                                                                                           [169] "Taiwan"                   "Tanzania"                 "Thailand"                 "Togo"                    
                                                                                                                                                                                                           [173] "Tonga"                    "Trinidad-Tobago"          "Tunisia"                  "Turkey"                  
                                                                                                                                                                                                           [177] "Turks-Cocos-Islands"      "Tuvalu"                   "UAE"                      "Uganda"                  
                                                                                                                                                                                                           [181] "UK"                       "Uruguay"                  "US-Virgin-Isles"          "USA"                     
                                                                                                                                                                                                           [185] "USSR"                     "Vanuatu"                  "Vatican-City"             "Venezuela"               
                                                                                                                                                                                                           [189] "Vietnam"                  "Western-Samoa"            "Yugoslavia"               "Zaire"                   
                                                                                                                                                                                                           [193] "Zambia"                   "Zimbabwe"                
                                                                                                                                                                                                           
                                                                                                                                                                                                           $landmass
                                                                                                                                                                                                           [1] 5 3 4 6 1 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $zone
                                                                                                                                                                                                           [1] 1 3 2 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $area
                                                                                                                                                                                                           [1]   648    29  2388     0  1247  2777  7690    84    19     1   143    31    23   113    47  1099   600  8512
                                                                                                                                                                                                           [19]     6   111   274   678    28   474  9976     4   623  1284   757  9561  1139     2   342    51   115     9
                                                                                                                                                                                                           [37]   128    43    22    49   284  1001    21  1222    12    18   337   547    91   268    10   108   249   239
                                                                                                                                                                                                           [55]   132  2176   109   246    36   215   112    93   103  3268  1904  1648   435    70   301   323    11   372
                                                                                                                                                                                                           [73]    98   181   583   236    30  1760     3   587   118   333  1240  1031  1973  1566   447   783   140    41
                                                                                                                                                                                                           [91]  1267   925   121   195   324   212   804    76   463   407  1285   300   313    92   237    26  2150   196
                                                                                                                                                                                                           [109]    72   637  1221    99   288   505    66  2506    63    17   450   185   945   514    57     5   164   781
                                                                                                                                                                                                           [127]   245   178  9363 22402    15   912   256   905   753   391
                                                                                                                                                                                                           
                                                                                                                                                                                                           $population
                                                                                                                                                                                                           [1]   16    3   20    0    7   28   15    8   90   10    1    6  119    9   35    4   24    2   11 1008    5   47
                                                                                                                                                                                                           [23]   31   54   17   61   14  684  157   39   57  118   13   77   12   56   18   84   48   36   22   29   38   49
                                                                                                                                                                                                           [45]   45  231  274   60
                                                                                                                                                                                                           
                                                                                                                                                                                                           $language
                                                                                                                                                                                                           [1] 10  6  8  1  2  4  3  5  7  9
                                                                                                                                                                                                           
                                                                                                                                                                                                           $religion
                                                                                                                                                                                                           [1] 2 6 1 0 5 3 4 7
                                                                                                                                                                                                           
                                                                                                                                                                                                           $bars
                                                                                                                                                                                                           [1] 0 2 3 1 5
                                                                                                                                                                                                           
                                                                                                                                                                                                           $stripes
                                                                                                                                                                                                           [1]  3  0  2  1  5  9 11 14  4  6 13  7
                                                                                                                                                                                                           
                                                                                                                                                                                                           $colours
                                                                                                                                                                                                           [1] 5 3 2 8 6 4 7 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $red
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $green
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $blue
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $gold
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $white
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $black
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $orange
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $mainhue
                                                                                                                                                                                                           [1] "green"  "red"    "blue"   "gold"   "white"  "orange" "black"  "brown" 
                                                                                                                                                                                                           
                                                                                                                                                                                                           $circles
                                                                                                                                                                                                           [1] 0 1 4 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crosses
                                                                                                                                                                                                           [1] 0 1 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $saltires
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $quarters
                                                                                                                                                                                                           [1] 0 1 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $sunstars
                                                                                                                                                                                                           [1]  1  0  6 22 14  3  4  5 15 10  7  2  9 50
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crescent
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $triangle
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $icon
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $animate
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $text
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $topleft
                                                                                                                                                                                                           [1] "black"  "red"    "green"  "blue"   "white"  "orange" "gold"  
                                                                                                                                                                                                           
                                                                                                                                                                                                           $botright
                                                                                                                                                                                                           [1] "green"  "red"    "white"  "black"  "blue"   "gold"   "orange" "brown" 
                                                                                                                                                                                                           
                                                                                                                                                                                                           
                                                                                                                                                                                                           | That's a job well done!

  |====================================================          |  84%
| Since unique_vals is a list, you can use what you've learned to determine the length of each element of unique_vals
                                                                                                                                                                                                           | (i.e. the number of unique values for each variable). Simplify the result, if possible. Hint: Apply the length()
                                                                                                                                                                                                           | function to each element of unique_vals.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > length(unique_vals)
                                                                                                                                                                                                           [1] 30
                                                                                                                                                                                                           
                                                                                                                                                                                                           | One more time. You can do it! Or, type info() for more options.
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Apply the length() function to each element of the unique_vals list using sapply(). Remember, no parentheses after
                                                                                                                                                                                                           | the name of the function you are applying (i.e. length).
                                                                                                                                                                                                           
                                                                                                                                                                                                           > sapply(unique_vals, length)
                                                                                                                                                                                                           name   landmass       zone       area population   language   religion       bars    stripes    colours 
                                                                                                                                                                                                           194          6          4        136         48         10          8          5         12          8 
                                                                                                                                                                                                           red      green       blue       gold      white      black     orange    mainhue    circles    crosses 
                                                                                                                                                                                                           2          2          2          2          2          2          2          8          4          3 
                                                                                                                                                                                                           saltires   quarters   sunstars   crescent   triangle       icon    animate       text    topleft   botright 
                                                                                                                                                                                                           2          3         14          2          2          2          2          2          7          8 
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Perseverance, that's the answer.

  |=====================================================         |  86%
| The fact that the elements of the unique_vals list are all vectors of *different* length poses a problem for
| sapply(), since there's no obvious way of simplifying the result.
                                                                                                                                                                                                           
                                                                                                                                                                                                           ...
                                                                                                                                                                                                           
                                                                                                                                                                                                           |=======================================================       |  88%
                                                                                                                                                                                                           | Use sapply() to apply the unique() function to each column of the flags dataset to see that you get the same
                                                                                                                                                                                                           | unsimplified list that you got from lapply().
                                                                                                                                                                                                           
                                                                                                                                                                                                           > sapply(flags, unique)
                                                                                                                                                                                                           $name
                                                                                                                                                                                                           [1] "Afghanistan"              "Albania"                  "Algeria"                  "American-Samoa"          
                                                                                                                                                                                                           [5] "Andorra"                  "Angola"                   "Anguilla"                 "Antigua-Barbuda"         
                                                                                                                                                                                                           [9] "Argentina"                "Argentine"                "Australia"                "Austria"                 
                                                                                                                                                                                                           [13] "Bahamas"                  "Bahrain"                  "Bangladesh"               "Barbados"                
                                                                                                                                                                                                           [17] "Belgium"                  "Belize"                   "Benin"                    "Bermuda"                 
                                                                                                                                                                                                           [21] "Bhutan"                   "Bolivia"                  "Botswana"                 "Brazil"                  
                                                                                                                                                                                                           [25] "British-Virgin-Isles"     "Brunei"                   "Bulgaria"                 "Burkina"                 
                                                                                                                                                                                                           [29] "Burma"                    "Burundi"                  "Cameroon"                 "Canada"                  
                                                                                                                                                                                                           [33] "Cape-Verde-Islands"       "Cayman-Islands"           "Central-African-Republic" "Chad"                    
                                                                                                                                                                                                           [37] "Chile"                    "China"                    "Colombia"                 "Comorro-Islands"         
                                                                                                                                                                                                           [41] "Congo"                    "Cook-Islands"             "Costa-Rica"               "Cuba"                    
                                                                                                                                                                                                           [45] "Cyprus"                   "Czechoslovakia"           "Denmark"                  "Djibouti"                
                                                                                                                                                                                                           [49] "Dominica"                 "Dominican-Republic"       "Ecuador"                  "Egypt"                   
                                                                                                                                                                                                           [53] "El-Salvador"              "Equatorial-Guinea"        "Ethiopia"                 "Faeroes"                 
                                                                                                                                                                                                           [57] "Falklands-Malvinas"       "Fiji"                     "Finland"                  "France"                  
                                                                                                                                                                                                           [61] "French-Guiana"            "French-Polynesia"         "Gabon"                    "Gambia"                  
                                                                                                                                                                                                           [65] "Germany-DDR"              "Germany-FRG"              "Ghana"                    "Gibraltar"               
                                                                                                                                                                                                           [69] "Greece"                   "Greenland"                "Grenada"                  "Guam"                    
                                                                                                                                                                                                           [73] "Guatemala"                "Guinea"                   "Guinea-Bissau"            "Guyana"                  
                                                                                                                                                                                                           [77] "Haiti"                    "Honduras"                 "Hong-Kong"                "Hungary"                 
                                                                                                                                                                                                           [81] "Iceland"                  "India"                    "Indonesia"                "Iran"                    
                                                                                                                                                                                                           [85] "Iraq"                     "Ireland"                  "Israel"                   "Italy"                   
                                                                                                                                                                                                           [89] "Ivory-Coast"              "Jamaica"                  "Japan"                    "Jordan"                  
                                                                                                                                                                                                           [93] "Kampuchea"                "Kenya"                    "Kiribati"                 "Kuwait"                  
                                                                                                                                                                                                           [97] "Laos"                     "Lebanon"                  "Lesotho"                  "Liberia"                 
                                                                                                                                                                                                           [101] "Libya"                    "Liechtenstein"            "Luxembourg"               "Malagasy"                
                                                                                                                                                                                                           [105] "Malawi"                   "Malaysia"                 "Maldive-Islands"          "Mali"                    
                                                                                                                                                                                                           [109] "Malta"                    "Marianas"                 "Mauritania"               "Mauritius"               
                                                                                                                                                                                                           [113] "Mexico"                   "Micronesia"               "Monaco"                   "Mongolia"                
                                                                                                                                                                                                           [117] "Montserrat"               "Morocco"                  "Mozambique"               "Nauru"                   
                                                                                                                                                                                                           [121] "Nepal"                    "Netherlands"              "Netherlands-Antilles"     "New-Zealand"             
                                                                                                                                                                                                           [125] "Nicaragua"                "Niger"                    "Nigeria"                  "Niue"                    
                                                                                                                                                                                                           [129] "North-Korea"              "North-Yemen"              "Norway"                   "Oman"                    
                                                                                                                                                                                                           [133] "Pakistan"                 "Panama"                   "Papua-New-Guinea"         "Parguay"                 
                                                                                                                                                                                                           [137] "Peru"                     "Philippines"              "Poland"                   "Portugal"                
                                                                                                                                                                                                           [141] "Puerto-Rico"              "Qatar"                    "Romania"                  "Rwanda"                  
                                                                                                                                                                                                           [145] "San-Marino"               "Sao-Tome"                 "Saudi-Arabia"             "Senegal"                 
                                                                                                                                                                                                           [149] "Seychelles"               "Sierra-Leone"             "Singapore"                "Soloman-Islands"         
                                                                                                                                                                                                           [153] "Somalia"                  "South-Africa"             "South-Korea"              "South-Yemen"             
                                                                                                                                                                                                           [157] "Spain"                    "Sri-Lanka"                "St-Helena"                "St-Kitts-Nevis"          
                                                                                                                                                                                                           [161] "St-Lucia"                 "St-Vincent"               "Sudan"                    "Surinam"                 
                                                                                                                                                                                                           [165] "Swaziland"                "Sweden"                   "Switzerland"              "Syria"                   
                                                                                                                                                                                                           [169] "Taiwan"                   "Tanzania"                 "Thailand"                 "Togo"                    
                                                                                                                                                                                                           [173] "Tonga"                    "Trinidad-Tobago"          "Tunisia"                  "Turkey"                  
                                                                                                                                                                                                           [177] "Turks-Cocos-Islands"      "Tuvalu"                   "UAE"                      "Uganda"                  
                                                                                                                                                                                                           [181] "UK"                       "Uruguay"                  "US-Virgin-Isles"          "USA"                     
                                                                                                                                                                                                           [185] "USSR"                     "Vanuatu"                  "Vatican-City"             "Venezuela"               
                                                                                                                                                                                                           [189] "Vietnam"                  "Western-Samoa"            "Yugoslavia"               "Zaire"                   
                                                                                                                                                                                                           [193] "Zambia"                   "Zimbabwe"                
                                                                                                                                                                                                           
                                                                                                                                                                                                           $landmass
                                                                                                                                                                                                           [1] 5 3 4 6 1 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $zone
                                                                                                                                                                                                           [1] 1 3 2 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $area
                                                                                                                                                                                                           [1]   648    29  2388     0  1247  2777  7690    84    19     1   143    31    23   113    47  1099   600  8512
                                                                                                                                                                                                           [19]     6   111   274   678    28   474  9976     4   623  1284   757  9561  1139     2   342    51   115     9
                                                                                                                                                                                                           [37]   128    43    22    49   284  1001    21  1222    12    18   337   547    91   268    10   108   249   239
                                                                                                                                                                                                           [55]   132  2176   109   246    36   215   112    93   103  3268  1904  1648   435    70   301   323    11   372
                                                                                                                                                                                                           [73]    98   181   583   236    30  1760     3   587   118   333  1240  1031  1973  1566   447   783   140    41
                                                                                                                                                                                                           [91]  1267   925   121   195   324   212   804    76   463   407  1285   300   313    92   237    26  2150   196
                                                                                                                                                                                                           [109]    72   637  1221    99   288   505    66  2506    63    17   450   185   945   514    57     5   164   781
                                                                                                                                                                                                           [127]   245   178  9363 22402    15   912   256   905   753   391
                                                                                                                                                                                                           
                                                                                                                                                                                                           $population
                                                                                                                                                                                                           [1]   16    3   20    0    7   28   15    8   90   10    1    6  119    9   35    4   24    2   11 1008    5   47
                                                                                                                                                                                                           [23]   31   54   17   61   14  684  157   39   57  118   13   77   12   56   18   84   48   36   22   29   38   49
                                                                                                                                                                                                           [45]   45  231  274   60
                                                                                                                                                                                                           
                                                                                                                                                                                                           $language
                                                                                                                                                                                                           [1] 10  6  8  1  2  4  3  5  7  9
                                                                                                                                                                                                           
                                                                                                                                                                                                           $religion
                                                                                                                                                                                                           [1] 2 6 1 0 5 3 4 7
                                                                                                                                                                                                           
                                                                                                                                                                                                           $bars
                                                                                                                                                                                                           [1] 0 2 3 1 5
                                                                                                                                                                                                           
                                                                                                                                                                                                           $stripes
                                                                                                                                                                                                           [1]  3  0  2  1  5  9 11 14  4  6 13  7
                                                                                                                                                                                                           
                                                                                                                                                                                                           $colours
                                                                                                                                                                                                           [1] 5 3 2 8 6 4 7 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $red
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $green
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $blue
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $gold
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $white
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $black
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $orange
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $mainhue
                                                                                                                                                                                                           [1] "green"  "red"    "blue"   "gold"   "white"  "orange" "black"  "brown" 
                                                                                                                                                                                                           
                                                                                                                                                                                                           $circles
                                                                                                                                                                                                           [1] 0 1 4 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crosses
                                                                                                                                                                                                           [1] 0 1 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $saltires
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $quarters
                                                                                                                                                                                                           [1] 0 1 4
                                                                                                                                                                                                           
                                                                                                                                                                                                           $sunstars
                                                                                                                                                                                                           [1]  1  0  6 22 14  3  4  5 15 10  7  2  9 50
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crescent
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $triangle
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $icon
                                                                                                                                                                                                           [1] 1 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $animate
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $text
                                                                                                                                                                                                           [1] 0 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $topleft
                                                                                                                                                                                                           [1] "black"  "red"    "green"  "blue"   "white"  "orange" "gold"  
                                                                                                                                                                                                           
                                                                                                                                                                                                           $botright
                                                                                                                                                                                                           [1] "green"  "red"    "white"  "black"  "blue"   "gold"   "orange" "brown" 
                                                                                                                                                                                                           
                                                                                                                                                                                                           
                                                                                                                                                                                                           | Keep up the great work!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |========================================================      |  90%
                                                                                                                                                                                                           | Occasionally, you may need to apply a function that is not yet defined, thus requiring you to write your own.
                                                                                                                                                                                                           | Writing functions in R is beyond the scope of this lesson, but let's look at a quick example of how you might do so
| in the context of loop functions.

...

  |=========================================================     |  92%
| Pretend you are interested in only the second item from each element of the unique_vals list that you just created.
| Since each element of the unique_vals list is a vector and we're not aware of any built-in function in R that
                                                                                                                                                                                                           | returns the second element of a vector, we will construct our own function.
                                                                                                                                                                                                           
                                                                                                                                                                                                           ...
                                                                                                                                                                                                           
                                                                                                                                                                                                           |==========================================================    |  94%
                                                                                                                                                                                                           | lapply(unique_vals, function(elem) elem[2]) will return a list containing the second item from each element of the
                                                                                                                                                                                                           | unique_vals list. Note that our function takes one argument, elem, which is just a 'dummy variable' that takes on
                                                                                                                                                                                                           | the value of each element of unique_vals, in turn.
                                                                                                                                                                                                           
                                                                                                                                                                                                           > lapply(unique_vals, function(elem) elem[2])
                                                                                                                                                                                                           $name
                                                                                                                                                                                                           [1] "Albania"
                                                                                                                                                                                                           
                                                                                                                                                                                                           $landmass
                                                                                                                                                                                                           [1] 3
                                                                                                                                                                                                           
                                                                                                                                                                                                           $zone
                                                                                                                                                                                                           [1] 3
                                                                                                                                                                                                           
                                                                                                                                                                                                           $area
                                                                                                                                                                                                           [1] 29
                                                                                                                                                                                                           
                                                                                                                                                                                                           $population
                                                                                                                                                                                                           [1] 3
                                                                                                                                                                                                           
                                                                                                                                                                                                           $language
                                                                                                                                                                                                           [1] 6
                                                                                                                                                                                                           
                                                                                                                                                                                                           $religion
                                                                                                                                                                                                           [1] 6
                                                                                                                                                                                                           
                                                                                                                                                                                                           $bars
                                                                                                                                                                                                           [1] 2
                                                                                                                                                                                                           
                                                                                                                                                                                                           $stripes
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $colours
                                                                                                                                                                                                           [1] 3
                                                                                                                                                                                                           
                                                                                                                                                                                                           $red
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $green
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $blue
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $gold
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $white
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $black
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $orange
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $mainhue
                                                                                                                                                                                                           [1] "red"
                                                                                                                                                                                                           
                                                                                                                                                                                                           $circles
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crosses
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $saltires
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $quarters
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $sunstars
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $crescent
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $triangle
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $icon
                                                                                                                                                                                                           [1] 0
                                                                                                                                                                                                           
                                                                                                                                                                                                           $animate
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $text
                                                                                                                                                                                                           [1] 1
                                                                                                                                                                                                           
                                                                                                                                                                                                           $topleft
                                                                                                                                                                                                           [1] "red"
                                                                                                                                                                                                           
                                                                                                                                                                                                           $botright
                                                                                                                                                                                                           [1] "red"
                                                                                                                                                                                                           
                                                                                                                                                                                                           
                                                                                                                                                                                                           | You got it!
                                                                                                                                                                                                             
                                                                                                                                                                                                             |============================================================  |  96%
                                                                                                                                                                                                           | The only difference between previous examples and this one is that we are defining and using our own function right
                                                                                                                                                                                                           | in the call to lapply(). Our function has no name and disappears as soon as lapply() is done using it. So-called
                                                                                                                                                                                                           | 'anonymous functions' can be very useful when one of R's built-in functions isn't an option.
                                                                                                                                                                                                           
                                                                                                                                                                                                           ...
                                                                                                                                                                                                           
                                                                                                                                                                                                           |============================================================= |  98%
                                                                                                                                                                                                           | In this lesson, you learned how to use the powerful lapply() and sapply() functions to apply an operation over the
                                                                                                                                                                                                           | elements of a list. In the next lesson, we'll take a look at some close relatives of lapply() and sapply().

...

  |==============================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?                                                                                                    ...
                                                                                                    
                                                                                                    |======================================================================================================================| 100%
                                                                                                    | Would you like to receive credit for completing this course on Coursera.org?
                                                                                                      
  
  
  
  
  
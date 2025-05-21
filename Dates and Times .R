> library("swirl")

| Hi! Type swirl() when you are ready to begin.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did
| then. If you are new, call yourself something unique.

What shall I call you? Abdul

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


Selection: 14

  |                                                                                    |   0%

| R has a special way of representing dates and times, which can be helpful if you're working
| with data that show how something changes over time (i.e. time-series data) or if your data
| contain some other temporal information, like dates of birth.

...

|==                                                                                  |   3%
| Dates are represented by the 'Date' class and times are represented by the 'POSIXct' and 'POSIXlt' classes. Internally, dates are
| stored as the number of days since 1970-01-01 and times are stored as either the number of seconds since 1970-01-01 (for 'POSIXct')
| or a list of seconds, minutes, hours, etc. (for 'POSIXlt').

...

|=====                                                                               |   6%
| Let's start by using d1 <- Sys.Date() to get the current date and store it in the variable d1. (That's the letter 'd' and the
| number 1.)

> d1 <- Sys.Date()

| Excellent work!
  
  |=======                                                                             |   8%
  | Use the class() function to confirm d1 is a Date object.
  
  > class(d1)
  [1] "Date"
  
  | You are really on a roll!
    
    |=========                                                                           |  11%
    | We can use the unclass() function to see what d1 looks like internally. Try it out.
    
    > unclass(d1)
    [1] 20229
    
    | Perseverance, that's the answer.

  |============                                                                        |  14%
| That's the exact number of days since 1970-01-01!
      
      ...
    
    |==============                                                                      |  17%
    | However, if you print d1 to the console, you'll get today's date -- YEAR-MONTH-DAY. Give it a try.
    
    > d1
    [1] "2025-05-21"
    
    | Your dedication is inspiring!
      
      |================                                                                    |  19%
    | What if we need to reference a date prior to 1970-01-01? Create a variable d2 containing as.Date("1969-01-01").
    
    > d2 <- as.Date("1969-01-01")
    
    | You nailed it! Good job!
      
      |===================                                                                 |  22%
      | Now use unclass() again to see what d2 looks like internally.
      
      > unclass(d2)
      [1] -365
      
      | Nice work!
        
        |=====================                                                               |  25%
        | As you may have anticipated, you get a negative number. In this case, it's -365, since 1969-01-01 is exactly one calendar year
| (i.e. 365 days) BEFORE 1970-01-01.

...

  |=======================                                                             |  28%
| Now, let's take a look at how R stores times. You can access the current date and time using the Sys.time() function with no
        | arguments. Do this and store the result in a variable called t1.
        
        > t1 <- Sys.Date()
        
        | Not quite right, but keep trying. Or, type info() for more options.
        
        | t1 <- Sys.time() will store the current date and time in a variable called t1.
        
        > t1 <- Sys.time()
        
        | You got it right!
          
          |==========================                                                          |  31%
        | View the contents of t1.
        
        > t1
        [1] "2025-05-21 10:20:16 CDT"
        
        | Nice work!
          
          |============================                                                        |  33%
        | And check the class() of t1.
        
        > class(t1)
        [1] "POSIXct" "POSIXt" 
        
        | Perseverance, that's the answer.

  |==============================                                                      |  36%
| As mentioned earlier, POSIXct is just one of two ways that R represents time information. (You can ignore the second value above,
| POSIXt, which just functions as a common language between POSIXct and POSIXlt.) Use unclass() to see what t1 looks like internally
| -- the (large) number of seconds since the beginning of 1970.

> unclass
function (x)  .Primitive("unclass")

| Not quite right, but keep trying. Or, type info() for more options.

| Use unclass(t1) to see how many seconds have passed since the beginning of 1970.

> unclass(t1)
[1] 1747840816

| That's a job well done!
          
          |=================================                                                   |  39%
          | By default, Sys.time() returns an object of class POSIXct, but we can coerce the result to POSIXlt with as.POSIXlt(Sys.time()).
          | Give it a try and store the result in t2.
          
          > as.POSIXlt(Sys.time())
          [1] "2025-05-21 10:25:25 CDT"
          
          | Almost! Try again. Or, type info() for more options.
          
          | t2 <- as.POSIXlt(Sys.time()) will coerce the result of Sys.time to 'POSIXlt' and store the result.
          
          > t2 <- as.POSIXlt(Sys.time())
          
          | That's a job well done!

  |===================================                                                 |  42%
| Check the class of t2.

> t2
[1] "2025-05-21 10:25:47 CDT"

| One more time. You can do it! Or, type info() for more options.

| Type class(t2) to view its class.

> class(t2)
[1] "POSIXlt" "POSIXt" 

| Excellent work!

  |=====================================                                               |  44%
| Now view its contents.

> t2
[1] "2025-05-21 10:25:47 CDT"

| Keep up the great work!

  |========================================                                            |  47%
| The printed format of t2 is identical to that of t1. Now unclass() t2 to see how it is different internally.

> unclass(t2)
$sec
[1] 47.43522

$min
[1] 25

$hour
[1] 10

$mday
[1] 21

$mon
[1] 4

$year
[1] 125

$wday
[1] 3

$yday
[1] 140

$isdst
[1] 1

$zone
[1] "CDT"

$gmtoff
[1] -18000

attr(,"tzone")
[1] ""    "CST" "CDT"
attr(,"balanced")
[1] TRUE

| Perseverance, that's the answer.
          
          |==========================================                                          |  50%
          | t2, like all POSIXlt objects, is just a list of values that make up the date and time. Use str(unclass(t2)) to have a more compact
          | view.
          
          > str(unclass(t2))
          List of 11
          $ sec   : num 47.4
          $ min   : int 25
          $ hour  : int 10
          $ mday  : int 21
          $ mon   : int 4
          $ year  : int 125
          $ wday  : int 3
          $ yday  : int 140
          $ isdst : int 1
          $ zone  : chr "CDT"
          $ gmtoff: int -18000
          - attr(*, "tzone")= chr [1:3] "" "CST" "CDT"
          - attr(*, "balanced")= logi TRUE
          
          | Perseverance, that's the answer.

  |============================================                                        |  53%
| If, for example, we want just the minutes from the time stored in t2, we can access them with t2$min. Give it a try.

> t2$min
[1] 25

| That's a job well done!
            
            |===============================================                                     |  56%
          | Now that we have explored all three types of date and time objects, let's look at a few functions that extract useful information
| from any of these objects -- weekdays(), months(), and quarters().

...

  |=================================================                                   |  58%
| The weekdays() function will return the day of week from any date or time object. Try it out on d1, which is the Date object that
| contains today's date.
          
          > weekdays(d1)
          [1] "Wednesday"
          
          | That's correct!

  |===================================================                                 |  61%
| The months() function also works on any date or time object. Try it on t1, which is the POSIXct object that contains the current
| time (well, it was the current time when you created it).

> months(t1, system.time())
Error in system.time() : argument "expr" is missing, with no default
Timing stopped at: 0.012 0.001 0.013
> months(system.time(t1))
Error in UseMethod("months") : 
  no applicable method for 'months' applied to an object of class "proc_time"
> skip()

| Entering the following correct answer for you...

> months(t1)
[1] "May"

| You are amazing!

  |======================================================                              |  64%
| The quarters() function returns the quarter of the year (Q1-Q4) from any date or time object. Try it on t2, which is the POSIXlt
| object that contains the time at which you created it.

> quarters(t2)
[1] "Q2"

| That's a job well done!
            
            |========================================================                            |  67%
          | Often, the dates and times in a dataset will be in a format that R does not recognize. The strptime() function can be helpful in
          | this situation.
          
          ...
          
          |==========================================================                          |  69%
          | strptime() converts character vectors to POSIXlt. In that sense, it is similar to as.POSIXlt(), except that the input doesn't have
| to be in a particular format (YYYY-MM-DD).

...

  |=============================================================                       |  72%
| To see how it works, store the following character string in a variable called t3: "October 17, 1986 08:24" (with the quotes).

> t3 <- strptime("October17, 1986 08:24")
Error in strptime("October17, 1986 08:24") : 
  argument "format" is missing, with no default
> skip()

| Entering the following correct answer for you...

> t3 <- "October 17, 1986 08:24"

| Great job!

  |===============================================================                     |  75%
| Now, use strptime(t3, "%B %d, %Y %H:%M") to help R convert our date/time object to a format that it understands. Assign the result
| to a new variable called t4. (You should pull up the documentation for strptime() if you'd like to know more about how it works.)

> t4 <- strptime(t3, "%B %d, %Y %H:%M")

| That's the answer I was looking for.

  |=================================================================                   |  78%
| Print the contents of t4.

> t4
[1] "1986-10-17 08:24:00 CDT"

| That's the answer I was looking for.

|====================================================================                |  81%
| That's the format we've come to expect. Now, let's check its class().

> class(t4)
[1] "POSIXlt" "POSIXt" 

| Great job!

  |======================================================================              |  83%
| Finally, there are a number of operations that you can perform on dates and times, including arithmetic operations (+ and -) and
| comparisons (<, ==, etc.)

...

  |========================================================================            |  86%
| The variable t1 contains the time at which you created it (recall you used Sys.time()). Confirm that some time has passed since you
| created t1 by using the 'greater than' operator to compare it to the current time: Sys.time() > t1

> Sys.time() >t1
[1] TRUE

| Excellent work!

  |===========================================================================         |  89%
| So we know that some time has passed, but how much? Try subtracting t1 from the current time using Sys.time() - t1. Don't forget
| the parentheses at the end of Sys.time(), since it is a function.

> Sys.time() -t1
Time difference of 1.358897 hours

| You are really on a roll!
  
  |=============================================================================       |  92%
| The same line of thinking applies to addition and the other comparison operators. If you want more control over the units when
| finding the above difference in times, you can use difftime(), which allows you to specify a 'units' parameter.

...

|===============================================================================     |  94%
| Use difftime(Sys.time(), t1, units = 'days') to find the amount of time in DAYS that has passed since you created t1.

> difftime(Sys.time(), t1, units = 'days')
Time difference of 0.05732405 days

| That's the answer I was looking for.

  |==================================================================================  |  97%
| In this lesson, you learned how to work with dates and times in R. While it is important to understand the basics, if you find
| yourself working with dates and times often, you may want to check out the lubridate package by Hadley Wickham.

...

  |====================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 1

| Great job!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.
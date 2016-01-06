Create a data.table my_first_data_table with a column x = c("a", "b", "c", "d", "e") and a column y = c(1, 2, 3, 4, 5). Use the function data.table().
Create a two-column data.table DT that contains the four integers 1, 2, 1 and 2 in the first column a and the letters A, B, C and D in the second column b. Use recycling.
Select the third row of DT and just print the result to the console.
Select the second and third rows without using commas and print the result to the console.
--------------------------------------------

Select the penultimate row of the table. Make use of .N for this.
Return the column names of the data.table.
Return the number of rows and number of columns of the data.table.
Select row 2 twice and row 3, returning a data.table with three rows where row 2 is a duplicate of row 1.

--------------------------------------------
A data.table table DT is preloaded in your workspace which is to your right. Type DT in the console to have a look at it. As you have learned in the video, you can select a column from that data.table with DT[,.(B)].
What do you think is the output of DT[, B]?
A. data.table
B. vector


getwd()
-------------------------------------------------

Have a close look at 1.1 and 1.2 from the data.table package FAQs.
Type D <- 5 in the console. What do you think is the output of DT[, .(D)] and DT[, D]?

Both outputs give an error 1
DT[, D] returns 5 as vector, and DT[, .(D)] returns 5 as data.table 2
DT[, D] returns 5 as data.table, and DT[, .(D)] returns 5 as vector 3
DT[, D] returns 5 as vector, and DT[, .(D)] returns an error 4
DT[, D] returns an error, and DT[, .(D)] returns 5 as data.table


------------------------------------------------
Create a subset containing the columns B and C for rows 1 and 3 of DT. Simply print out this subset to the console.
From DT, create a data.table, answith two columns:Bandval, wherevalis the product ofAandC.
Fill in the blanks of the assignment of ans2, such that it equals the data.table specified in target.


Just a small reminder: speak out loud and say

Take DT, subset rows using i, then calculate j grouped by by.

In the video, the second argument j was covered. j can be used to select columns by wrapping the column names in .(). In addition to selecting columns, you can also call functions on them as if the columns were variables.

Instructions
Create a subset containing the columns B and C for rows 1 and 3 of DT. Simply print out this subset to the console.
From DT, create a data.table, answith two columns:Bandval, wherevalis the product ofAandC.
Fill in the blanks of the assignment of ans2, such that it equals the data.table specified in target.
Take Hint (-30xp)

----------------------------------------
  
  
  In this section you were introduced to the last of the main parts of the data.table syntax: by. If you supply a j expression and a by list of expressions, the j expression is repeated for each by group. Time to master the by argument with some hands-on examples and exercises.

First type iris and observe that all the rows are printed and that the column names scroll off the top of your screen. This is because iris is a data.frame. Use the scroll bar to scroll to the top to see the column names.

Instructions
Convert the iris dataset to a data.table DT. Youre now ready to use data.table magic on it!
For each Species, what is the mean Sepal.Length? Do not provide a name for the newly created column.
Do exactly the same as in the instruction above, but this time group by the first letter of the Species name instead. Use substr() for this.
Take Hint (-30xp)

----------------------------------------

You saw earlier that .N can be used in i and that it designates the number of rows in DT. There, it is typically used for returning the last row or an offset from it. .N can be used in j too and designates the number of rows in this group. The becomes very powerful when you use it in combination with by.

DT, a data.table version of iris, is already specified in the workspace, so you can start experimenting right away.

Instructions
Group the specimens by Sepal area (to the nearest 10 cm2) and count how many occur in each group. Simply print the resulting data.table. Use the template in the sample code by filling in the blanks.
Copy and adapt the solution to the above question, to name the columns Area and Count, respectively.

----------------------------------------
Return multiple numbers in j
100xp
In the previous exercises we returned single numbers in j. However, this is not necessary, because you do not have to return only single numbers in j. Let us experiment with this via a new data.table DT, that has already been specified in your sample code.

Instructions
Given DT, calculate cumulative sum of C in column C while you group by A,B. Store it in a new data.table DT2 with 3 columns: A, B and C.
Select from DT2, the last two values of C in column C while you group by A alone. Make sure the column names dont change.
Take Hint (-30xp)
----------------------------------------
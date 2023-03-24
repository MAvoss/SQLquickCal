# SQLquickCal
SQL Quick calendar 

A SQL query for wrtiting a quick calendar 

This code is written in SQL and it is used to generate a list of dates between two given dates and retrieve some information related to those dates such as the year, day of the week, day name, week number, and whether the day is a weekday or a weekend.

First, two DATE variables @Date1 and @Date2 are declared and initialized to '20091231' and '20230101' respectively.

Then, a SELECT statement is used to retrieve the information related to each date within the range of @Date1 and @Date2.

The SELECT statement uses the master..spt_values system table, which is a special system table that is commonly used in SQL Server. It is used to generate a sequence of numbers and is commonly used for looping, generating test data, or creating date ranges.

The SELECT statement uses the DATEADD() function to add a number of days to the @Date1 variable, starting from day 0, which gives @Date1 itself. This generates a sequence of dates between @Date1 and @Date2.

The SELECT statement then retrieves various information related to each date using different SQL Server date functions, such as datepart(), DATENAME(), and case statements.

The datepart() function is used to retrieve the year and day of the week of each date.
The DATENAME() function is used to retrieve the day name, week number, and ISO week number of each date.
The case statements are used to determine whether each date is a weekday or a weekend.
Finally, the WHERE clause is used to filter the results to include only the dates that are less than @Date2.

In summary, this code generates a list of dates between two given dates and retrieves various information related to each date using different SQL Server date functions.

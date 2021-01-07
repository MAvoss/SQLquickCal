DECLARE @Date1 DATE, @Date2 DATE
SET @Date1 = '20091231'
SET @Date2 = '20230101'

SELECT 
DATEADD(DAY,number+1,@Date1) [Date],
datepart(year,DATEADD(DAY,number+1,@Date1))as year,
datepart(DW,DATEADD(DAY,number+1,@Date1))DayofWeek,
DATENAME(WEEKDAY,DATEADD(DAY,number+1,@Date1))dayname,
DATENAME(WEEK,DATEADD(DAY,number+1,@Date1))week,
DATENAME(ISOWK,DATEADD(DAY,number+1,@Date1))isowk,
case when datepart(DW,DATEADD(DAY,number+1,@Date1)) not in (7,1) then 1 else 0 end as isweekday,
case when datepart(DW,DATEADD(DAY,number+1,@Date1)) in (7,1) then 1 else 0 end as isweekend




FROM master..spt_values
WHERE type = 'P'
AND DATEADD(DAY,number+1,@Date1) < @Date2

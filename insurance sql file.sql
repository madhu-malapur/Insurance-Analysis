use insurance;
select *from brokerage;

-- KPI1
select * from invoice;
select account_executive,count(invoice_number) as invoice_count
from invoice
group by account_executive
order by invoice_count desc;

-- KPI2
select *from meeting;
 select * from meeting;
SELECT YEAR(STR_TO_DATE(meeting_date, '%d-%m-%Y')) AS meeting_year, 
       COUNT(*) AS meeting_count
FROM meeting
GROUP BY meeting_year
ORDER BY meeting_year;

-- KPI3
select * from opportunity;
select stage,sum(revenue_amount) as revenue_amount
from opportunity
group by stage;

-- KPI4
select * from meeting;
select account_exe,count(meeting_date) as meetings
from meeting
group by Account_Exe
order by meetings desc;

-- KPI5
select * from opportunity;
Select opportunity_name,concat(Round(((revenue_amount)/1000),0),"k") as Revenue
From opportunity
Order by revenue_amount desc
limit 4;


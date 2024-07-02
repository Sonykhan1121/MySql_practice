with  first as (
    select start_date ,rank() over (order by start_date) as start_rank
    from Projects
    where start_date not in (
        select end_date from Projects
    ) 
),
 second as (
select end_date , rank() over (order by end_date ) as end_rank
    from Projects
    where end_date not in
    (
        select start_date from Projects
    )
)
select start_date, end_date 
from first,second
where start_rank = end_rank
order by Datediff(end_date,start_date),start_date;

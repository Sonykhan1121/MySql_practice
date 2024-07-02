select a.x , a.y 
from Functions as a
join  Functions  as b on a.x = b.y and a.y = b.x
group by a.x,a.y
having count(a.x)>1 or a.x<a.y
order by a.x
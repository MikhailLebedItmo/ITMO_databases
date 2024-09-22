select p.Color
	from Production.Product as p
	where p.Color is not NULL
	group by p.Color
	order by COUNT(*) desc
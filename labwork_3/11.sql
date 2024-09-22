select 
	pc.Name
	, COUNT(distinct psc.ProductSubcategoryID) as sub_cnt
	, COUNT(p.ProductID) as prod_cnt
from Production.ProductCategory as pc
left join Production.ProductSubcategory as psc
	on psc.ProductCategoryID = pc.ProductCategoryID
left join Production.Product as p
	on p.ProductSubcategoryID = psc.ProductSubcategoryID
group by pc.ProductCategoryID, pc.Name
	

select sum(records) from (
select
c.cPart
,c.ccnt
,x.bcnt
,c.ccnt*x.bcnt as records
from 
(select 
PartNumber as cPart
,count(*) as ccnt


  FROM [PSG_Hub].[dbo].[vFIN_Cardex]  group by PartNumber) c left outer join (
  select b.PartNumber as bPart,count(*) as bcnt
  from vFIN_BaseFile b
  group by b.PartNumber) x on x.bPart=c.cPart) y
  
  
 
with

my_data as (

  select 1 as x
  union all
  select 2 as x
  union all
  select 3 as x

)

select
  x,
  x * 2 - 1 as y
from my_data

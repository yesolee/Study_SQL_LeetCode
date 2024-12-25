select person_name
from (select turn,person_name, weight, 
    sum(weight) over (order by turn)
    as total_weight
from Queue
order by turn
) b
where total_weight <= 1000
order by total_weight desc
limit 1


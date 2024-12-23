select id, 
    case
        when p_id is null then 'Root'
        when id in (select t.id from Tree p where t.id = p.p_id ) then 'Inner'
        else 'Leaf'
    end as type
from Tree t
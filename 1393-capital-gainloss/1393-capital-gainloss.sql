with grouped as (select stock_name, operation, sum(price) as price
from Stocks
group by stock_name, operation
order by stock_name, operation)

select a.stock_name, 
    (a.price - b.price) as capital_gain_loss
from grouped a
join grouped b
on a.stock_name = b.stock_name
and (a.operation = "Sell" and b.operation = "Buy")


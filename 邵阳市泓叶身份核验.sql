select eio.pay_time, e.name,e.rank_name,eio.pay_amt
from employee_ident_order eio
inner  join  employee e on e.id = eio.employee_id
where eio.status = 1
and eio.tenant_id = 141
and eio.create_time>'2024-04-01 12:00:00'
and eio.create_time < '2024-05-01 12:00:00'
;



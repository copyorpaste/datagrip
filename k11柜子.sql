select e.name,e.rank_name,eco.pay_amt/100,eco.pay_time
from employee_cabinet_order eco
inner join  employee e on e.id = eco.employee_id
where eco.tenant_id = 12
  and eco.status = 1
  and eco.create_time > '2024-10-01 12:00:00'
  and eco.create_time < '2024-11-01 12:00:00';


select * from tenant;


# 174	鹰潭悦荟ktv
select e.name,e.rank_name,eco.pay_amt/100,eco.pay_time
from employee_cabinet_order eco
inner join  employee e on e.id = eco.employee_id
where eco.tenant_id = 174
  and eco.status = 1
  and eco.create_time > '2024-09-01 12:00:00'
  and eco.create_time < '2024-10-01 12:00:00';



# 208	南昌玖玖量贩
select e.name,e.rank_name,eco.pay_amt/100,eco.pay_time
from employee_cabinet_order eco
inner join  employee e on e.id = eco.employee_id
where eco.tenant_id = 208
  and eco.status = 1
  and eco.create_time > '2024-05-01 12:00:00'
  and eco.create_time < '2024-06-01 12:00:00';


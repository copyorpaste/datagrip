SELECT  e.id           as '员工id',
       t.`name`       as '场所名字',
       a.nickname     as '合伙人',
       e.rank_name    as '队伍名字',
       e.`name`       as '员工名字',
       te.create_time as '支付时间',
       te.amt / 100   as '金额'
FROM `tenant_employee_pay_divide_detail` te
         INNER JOIN employee e ON e.id = te.employee_id
         inner join tenant t on t.id = te.tenant_id
         inner join admin a on a.id = te.admin_id
WHERE te.is_deleted = 0
  and te.tenant_id in (105, 155, 112)
  AND admin_id != 0
  and te.create_time > '2024-11-04 12:00:40'
  and te.create_time < '2024-11-18 21:06:40'
order by te.tenant_id,te.id;



select *
from system_users where  id = 7014;



SELECT e.id
FROM `tenant_employee_pay_divide_detail` te
         INNER JOIN employee e ON e.id = te.employee_id
         inner join tenant t on t.id = te.tenant_id
         inner join admin a on a.id = te.admin_id
WHERE te.is_deleted = 0
  and te.tenant_id in (105, 155, 112)
  AND admin_id != 0
  and te.create_time > '2024-04-17 12:00:40'
  and te.create_time < '2024-04-22 12:00:40'
group by e.id;


select t.id, t.name, a.nickname, count(te.admin_id != 0), te.admin_id as cou, sum(te.amt) / 100
from tenant_employee_pay_divide_detail te
         inner join tenant t on t.id = te.tenant_id
         inner join admin a on a.id = te.admin_id
where te.create_time > '2024-03-11 12:00:40'
  and te.create_time < '2024-03-18 12:00:40'
  and te.admin_id != 0
  and te.tenant_id in (105, 155, 112)
  and te.is_deleted = 0
group by te.tenant_id, te.admin_id
order by cou desc


select *
from admin
where id = 6538;

select *
from admin
where user_id = 28628
  and is_deleted = 0 7068	112
11054	105
11055	155

select *
from tenant_employee_pay_divide
where tenant_id in (105, 155, 112)
  and is_deleted = 0
  and admin_id != 0;


26369

select *
from admin
where user_id = 26369;

select *
from admin
where tenant_id = 105;


7027	112
12377	105
12378	155

select *
from tenant
where id = 97;


select *
from tenant_union;

select *
from admin
where tenant_id = 192;


select *
from tenant_employee_pay_divide_detail
where tenant_id = 155 order by  id desc;

select *
from tenant where  id = 155;


select *
from employee_renew_order where  order_no = '2018EMPLOYEE1832046088094355456';

select *
from tenant_employee_pay_divide_detail where employee_id = 89623;
select *
from tenant_employee_pay_divide_detail where employee_id = 89596;

select *
from employee_renew_order where  order_no = '2018EMPLOYEE1832037127408455680';

select *
from tenant_employee_pay_divide where  tenant_id = 178;

select *
from employee_renew_order where  tenant_id = 178 and status =1 and create_time <'2024-09-10 12:00:00';


select *
from tenant_employee_pay_divide_detail where  tenant_id = 178 and admin_id=0 and create_time >'2024-09-01 12:00:00';


select id,nickname,is_hidden
from admin where  tenant_id=184 ;

select *
from tenant_employee_pay_divide where tenant_id = 184;



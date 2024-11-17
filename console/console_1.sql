select * from identity where  tenant_id = 121;


select * from identity_late where  tenant_id = 121;


select * from ticket where  tenant_id = 121;



select * from ticket_money where  tenant_id = 121;


select *
from tenant;


select *
from employee where  tenant_id = 115 and rank_id = 2144;

select *
from ticket_order where  employee_id = 37308;

select *
from `rank` where  tenant_id = 115;

select *
from employee where user_id = 24752 and tenant_id = 115;


select *
from employee where  tenant_id = 131 and  department_id = 255;


select  * from  employee_renew_order where  employee_id in ( 41536,41535,41537) and status = 1;


select  * from  employee_renew_order where  tenant_id = 131 and status = 1 and is_deleted=1;



select  * from  tenant_employee_pay_divide_detail where  employee_id in ( 41536,41535,41537);
select *
from tenant_employee_pay_divide_detail
where tenant_id = 131
  and is_deleted = 1;



select *
from tenant_employee_pay_divide_detail where  is_deleted = 0 and admin_id = 0 and create_time >'';




select  * from  tenant ;


select *
from ticket_order_bill where  id =33517 or id = 33518;


select *
from ticket_order where  employee_id = 40844 and status = 3 order by  id desc ;


select *
from ticket_order_commissioned_order where  id in (14969,
    14970
    );



SELECT e.id           as '员工id',
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
  and te.tenant_id =118
  AND admin_id != 0
  and te.create_time > '2023-10-01 12:00:40'
  and te.create_time < '2023-11-01 12:00:40';


select *
from equipment where  tenant_id = 1;


select *
from permission ;


select *
from back_end_user where  tenant_id = 100;


select *
from ticket_order where  order_no='2018T1779907099673890816';

select *
from employee where  id = 61212;


select *
from tenant;
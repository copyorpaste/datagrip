
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
  and te.tenant_id = 95
  AND admin_id != 0

 and te.create_time > '2024-11-01 12:00:40'
  and te.create_time < '2024-12-01 12:00:40';


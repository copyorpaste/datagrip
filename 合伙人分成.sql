#  老平台
select *, round(amt / cou, 1) as price
from (select t.id, t.name, a.nickname, count(te.admin_id != 0) as cou, sum(te.amt) / 100 as amt
      from tenant_employee_pay_divide_detail te
               inner join tenant t on t.id = te.tenant_id
               inner join admin a on a.id = te.admin_id
      where te.create_time > '2024-10-01 12:00:40'
        and te.create_time < '2024-11-01 12:00:40'
        and te.admin_id != 0
        and te.tenant_id not in (1, 105, 155, 112, 95)
        and te.is_deleted = 0
      group by te.tenant_id, te.admin_id
      having amt > 0
      order by cou desc) as tta
;
# 155	松阳玖号公馆
# 105	温州k11
# 112	丽水海阔娱乐会所
# 95	吉安煌钻国际会所

# 新平台系统费
select st.id,max(st.name),max(spop.amount),min(spop.amount),count(spop.id)
from `yudao-ktv`.system_platform_order_pay spop
inner join `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.status = 20
  and spop.amount > 100
and spop.deleted = false
and spop.app_id = 3
and spop.create_time>'2024-10-01 12:00:00'
and spop.create_time<'2024-11-01 12:00:00'
group by st.id
;

# 新平台核验
select st.id,max(st.name),max(spop.amount),min(spop.amount),count(spop.id)
from `yudao-ktv`.system_platform_order_pay spop
inner join `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.status = 20
  and spop.amount > 100
and spop.deleted = false
and spop.app_id = 1
and spop.create_time>'2024-10-01 12:00:00'
and spop.create_time<'2024-11-01 12:00:00'
group by st.id
;


# 会员费用明细

# 189 福州滴滴经销部


select e.name,e.department_name,e.rank_name,ero.old_expire_time,ero.new_expire_time from employee_renew_order ero
         inner join employee e on ero.employee_id = e.id
         where  ero.tenant_id = 189 and ero.status = 1

and ero.create_time > '2024-08-01 12:00:40' and ero.create_time<'2024-09-01 12:00:40'
order by ero.pay_time;



select *
from tenant_employee_pay_divide where  tenant_id = 241;


select *
from tenant_employee_pay_divide_detail where tenant_id = 241 and admin_id = 20725;


select *
from cabinet_detail where  cabinet_group_id=23;

select *
from cabinet_group where  tenant_id = 238;


select *
from tenant_employee_pay_divide where  tenant_id = 245;


select *
from tenant_employee_pay_divide_detail where  admin_id = 21242;


select *
from tenant;


select r.name,rr.type,rr.mode,rr.admin_nickname,rr.employee_name,rr.open_time,rr.reserve_time,rr.status
from reserve_room rr
inner  join room r on r.id = rr.room_id

where  rr.tenant_id = 238 and rr.create_time>'2024-10-01' and employee_id <>0 and rr.is_deleted =0 and rr.status<>4
order by  rr.id
;
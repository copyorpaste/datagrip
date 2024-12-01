
# -----月票 入我私账户
select *,round(amount/cou,1) from (select t.id, t.name, a.nickname, count(te.admin_id != 0) as cou, round(sum(te.amt) / 100,1) as amount
               from tenant_employee_pay_divide_detail te
                        inner join tenant t on t.id = te.tenant_id
                        inner join admin a on a.id = te.admin_id
               where te.create_time > '2024-11-01 12:00:40'
                 and te.create_time < '2024-12-01 12:00:40'
                 and te.admin_id = 0
                 and te.tenant_id not in (select id
                                          from tenant
                                          where employee_pay_mchnt_cd != '0004210F5853335')
                 and te.is_deleted = 0
               group by te.tenant_id, te.admin_id
               order by cou desc) t
;

# 新平台系统费
select st.id,max(st.name),max(spop.amount),min(spop.amount),count(spop.id)
from `yudao-ktv`.system_platform_order_pay spop
inner join `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.status = 20
  and spop.amount > 100
and spop.deleted = false
and spop.app_id = 3
and spop.create_time>'2024-11-01 12:00:00'
and spop.create_time<'2024-12-01 12:00:00'
group by st.id
;




# -----身份核验 公司
select sum(pay_amt),count(id)
from employee_ident_order
where tenant_id not in (1,2)
  and status =1
  and create_time > '2024-11-01 12:00:40'
  and create_time < '2024-12-01 12:00:40'
and is_deleted = 0
;

# -----身份核验 公司 新平台
select tenant_id,st.name, count(spop.id),sum(amount/100) as amount
from `yudao-ktv`.system_platform_order_pay spop
inner  join  `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.create_time > '2024-11-01 12:00:40'
  and spop.create_time < '2024-12-01 12:00:40' and spop.status =20 and spop.tenant_id<>1 and spop.app_id = 1
group by spop.tenant_id,st.name
having amount>1
;







# 新平台系统费 in18和1+1
select st.name,spop.pay_time,spop.user_id,sd.name,su.nickname
from `yudao-ktv`.system_platform_order_pay spop
inner join `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
inner  join  `yudao-ktv`.system_users su on su.id  = spop.user_id
inner  join  `yudao-ktv`.system_dept sd on sd.id  = su.dept_id
where spop.status = 20
  and spop.amount > 100
and spop.deleted = false
and spop.app_id = 3
and spop.create_time>'2024-11-01 12:00:00'
and spop.create_time<'2024-12-01 12:00:00'
and spop.tenant_id in (
#                        210
    213
                      )
order by st.id
;


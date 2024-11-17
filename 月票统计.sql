
# -----月票 入我私账户
select *,round(amount/cou,1) from (select t.id, t.name, a.nickname, count(te.admin_id != 0) as cou, round(sum(te.amt) / 100,1) as amount
               from tenant_employee_pay_divide_detail te
                        inner join tenant t on t.id = te.tenant_id
                        inner join admin a on a.id = te.admin_id
               where te.create_time > '2024-10-01 12:00:40'
                 and te.create_time < '2024-11-01 12:00:40'
                 and te.admin_id = 0
                 and te.tenant_id not in (select id
                                          from tenant
                                          where employee_pay_mchnt_cd != '0004210F5853335')
                 and te.is_deleted = 0
               group by te.tenant_id, te.admin_id
               order by cou desc) t
;

select tenant_id,st.name, count(spop.id)
from `yudao-ktv`.system_platform_order_pay spop
inner  join  `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.create_time > '2024-10-01 12:00:40'
  and spop.create_time < '2024-11-01 12:00:40' and spop.status =20 and spop.tenant_id<>1 and spop.app_id = 3
group by spop.tenant_id,st.name
;




# -----身份核验 公司
select sum(pay_amt),count(id)
from employee_ident_order
where tenant_id not in (1,2)
  and status =1
  and create_time > '2024-10-01 12:00:40'
  and create_time < '2024-11-01 12:00:40'
and is_deleted = 0
;

select tenant_id,st.name, count(spop.id),sum(amount/100) as amount
from `yudao-ktv`.system_platform_order_pay spop
inner  join  `yudao-ktv`.system_tenant st on st.id = spop.tenant_id
where spop.create_time > '2024-10-01 12:00:40'
  and spop.create_time < '2024-11-01 12:00:40' and spop.status =20 and spop.tenant_id<>1 and spop.app_id = 1
group by spop.tenant_id,st.name
having amount>1
;

# 身份核验返现
select t.id, t.name,count(te.pay_amt != 0) as cou,ROUND((t.ident_check_amt-300)/100),sum(te.pay_amt-300)/100
from employee_ident_order te
         inner join tenant t on t.id = te.tenant_id
where te.create_time > '2024-10-01 12:00:40'
  and te.create_time < '2024-12-01 12:00:40'
  and te.pay_amt > 300
  and te.status=1
  and te.tenant_id not in (select id
from tenant where  tenant.identi_check_pay_mchnt_cd!= '0004210F5853335')
and te.is_deleted=0
group by te.tenant_id
order by cou  desc;




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

select *
from admin where  tenant_id=189;

select *
from tenant_employee_pay_divide where  tenant_id=189;


select *
from tenant_employee_pay_divide_detail where admin_id = 12536;



select st.name,stufc.amount,description
from `yudao-ktv`.system_tenant_usage_fee_config stufc
left join `yudao-ktv`.system_tenant st on st.id = stufc.tenant_id
;




# -----月票 入我私账户
select *,round(amount/cou,1) from (select t.id, t.name, a.nickname, count(te.admin_id != 0) as cou, round(sum(te.amt) / 100,1) as amount
               from tenant_employee_pay_divide_detail te
                        inner join tenant t on t.id = te.tenant_id
                        inner join admin a on a.id = te.admin_id
               where te.create_time > '2024-10-01 12:00:40'
                 and te.create_time < '2024-11-01 12:00:40'
                 and te.admin_id = 0
                 and te.tenant_id not in (select id
                                          from tenant
                                          where employee_pay_mchnt_cd != '0004210F5853335')
                 and te.is_deleted = 0
               group by te.tenant_id, te.admin_id
               order by cou desc) t
;


select id
from tenant where  is_employee_pay = 1 and is_deleted =0 and id not in (select id                                                               from (
    select *,round(amount/cou,1) from (select t.id, t.name, a.nickname, count(te.admin_id != 0) as cou, round(sum(te.amt) / 100,1) as amount
               from tenant_employee_pay_divide_detail te
                        inner join tenant t on t.id = te.tenant_id
                        inner join admin a on a.id = te.admin_id
               where te.create_time > '2024-10-01 12:00:40'
                 and te.create_time < '2024-11-01 12:00:40'
                 and te.admin_id = 0
                 and te.tenant_id not in (select id
                                          from tenant
                                          where employee_pay_mchnt_cd != '0004210F5853335')
                 and te.is_deleted = 0
               group by te.tenant_id, te.admin_id
               order by cou desc) t) t1
    );



select ten.id, ten.name,lasttime
from (
select tenant_id, max(create_time) as lasttime
from  employee_renew_order

group by tenant_id) t inner  join  tenant ten on ten.id = t.tenant_id

order by  lasttime


select *
from tenant_employee_pay_divide_detail where  tenant_id = 238;


select *
from employee_renew_order where  tenant_id =238 and status =1;


insert into tenant_employee_pay_divide_detail (tenant_id,admin_id,amt,is_deleted,create_time,update_time)
select tenant_id,0,pay_amt,is_deleted,create_time,update_time
from employee_renew_order where  tenant_id =238 and status =1;

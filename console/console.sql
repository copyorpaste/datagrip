select *
from tenant
where name like '%红磨%';


select *
from admin
where tenant_id = 1;


select *
from `rank`
where tenant_id = 103;

select *
from attendance
where rank_id = 1711
  and create_time > '2023-08-16 12:00:00';

select id, rank_id
from ticket_order
where rank_id = 1711
  and create_time > '2023-08-16 12:00:00';


select *
from admin
where tenant_id = 105;


select *
from employee_renew_order
where tenant_id = 105
  and status = 1;

select *
from tenant_employee_pay_divide_detail
where tenant_id = 105;


select *
from `rank`
where tenant_id = 66
  and is_deleted = 1
order by update_time desc;

select *
from attendance
where rank_id in (select id
                  from `rank`
                  where tenant_id = 66
                    and is_deleted = 1
                  order by update_time desc)
  and create_time > '2023-08-01 00:00:00';


select *
from tenant
where id = 66;

select *
from room
where tenant_id = 107;

select *
from ticket_order
where rank_id in (select id
                  from `rank`
                  where tenant_id = 66
                    and is_deleted = 1
                  order by update_time desc)
  and create_time > '2023-08-01 00:00:00';

select *
from attendance
where employee_id = 14452
order by id desc;

select *
from employee
where id = 14452;

select *
from ticket_order
where employee_id = 14452
order by id desc;


select *
from tenant
where name like '%辉煌%';

select *
from room
where tenant_id = 75;


select *
from employee_renew_order
where tenant_id = 101
  and status = 1;

select rank_name, name, identity_name, first_entry_time, entry_time, last_sign_in_time, last_modify_identity_admin_name
from employee
where tenant_id = 98
  and identity_name like '%15%'
  and status = 1;

select rank_name,
       name,
       last_modify_identity_name,
       first_entry_time,
       entry_time,
       last_sign_in_time,
       last_modify_identity_admin_name,
       last_leave_time,
       last_leave_note
from employee
where tenant_id = 98
  and employee.last_modify_identity_name like '%15%'
  and status = 0;

select *
from tenant
where id = 1;

select *
from ticket
where tenant_id = 1;

select *
from identity
where tenant_id = 1
  and is_deleted = 0;


select *
from identity
where tenant_id = 5
  and is_deleted = 0;


select *
from employee
where tenant_id in (86);


select *
from tenant
where default_ident_check_status = 3;

select last_leave_note, last_modify_identity_name
from `employee`
where tenant_id = 98
  and status = 0;


select *
from employee_ident_order_info eidi
         inner join employee_ident_order eio on eidi.employee_ident_order_id = eio.id;


select *
from employee
where tenant_id = 1
  and user_id = 1;

select *
from identity
where tenant_id = 105;



select *
from equipment
where tenant_id in (5, 6);

select *
from tenant
where id in (5, 6);


select *
from admin
where tenant_id = 107;

select *
from admin
where user_id in (select user_id
                  from user_mp_log
                  where create_time > '2023-08-14 00:33:00'
                    and create_time < '2023-08-14 00:39:00');

select *
from user_mp_log
where create_time > '2023-08-14 00:33:00'
  and create_time < '2023-08-14 00:39:00';

select *
from user
where id in (select user_id
             from user_mp_log
             where create_time > '2023-08-14 00:33:00'
               and create_time < '2023-08-14 00:39:00');

select *
from tenant
where name like '%邵武%';



select *
from `rank`
where tenant_id = 22
  and is_deleted = 0;
select *
from `rank`
where tenant_id = 41
  and is_deleted = 1;

select *
from employee
where tenant_id = 41
  and rank_id = 1542;

select *
from back_end_user
where tenant_id = 105;

select *
from employee
where tenant_id in (15, 16);

UPDATE fade.employee t
SET t.ident_check_status = 3
WHERE t.tenant_id in (15, 16)
  and create_time < '2023-08-28 12:00:00';


select dd.create_time,
       a.nickname,
       t.name,
       dd.income_amt / 100,
       e.name,
       r.name,
       ro.name,
       rr.admin_nickname
from divide_detail dd
         inner join admin a on a.id = dd.income_admin_id
         inner join ticket_order tio on tio.id = dd.ticket_order_id
         inner join reserve_room rr on rr.id = dd.reserve_room_id
         inner join employee e on e.id = tio.employee_id
         inner join `rank` r on r.id = tio.rank_id
         inner join `room` ro on ro.id = rr.room_id
         LEFT JOIN ticket t ON t.id = tio.ticket_id
where dd.tenant_id = 1
  and dd.create_time between '2022-01-01 12:00:00'
    and '2024-01-01 12:00:00';


select *
from admin
where id = 0;

SELECT a.nickname,
       b.nickname        as in_come_nick_name,
       r.`name`          as room_name,
       e.`name`          as emp_name,
       t.`name`          as ticket_name,
       ra.`name`         as rank_name,
       dd.income_amt     as amt,
       dd.income_amt_ori as amt_ori,
       dd.use_time       as use_time
FROM divide_detail dd
         LEFT JOIN ticket_order tio ON tio.id = dd.ticket_order_id
         LEFT JOIN `rank` ra ON ra.id = tio.rank_id
         LEFT JOIN ticket t ON t.id = tio.ticket_id
         LEFT JOIN reserve_room rr ON rr.id = tio.reserve_room_id
         LEFT JOIN room r ON r.id = rr.room_id
         LEFT JOIN admin a ON a.id = rr.admin_id
         LEFT JOIN admin b ON b.id = dd.income_admin_id
         LEFT JOIN employee e ON e.id = tio.employee_id
WHERE dd.is_deleted = 0
  AND dd.income_admin_id = 5041
  AND dd.tenant_id = 54
  AND dd.use_time BETWEEN '2023-08-30 12:00:00' AND '2023-08-31 12:00:00';


select *
from divide_detail dd
WHERE dd.is_deleted = 0
  AND dd.income_admin_id = 5041
  AND dd.tenant_id = 54
  AND dd.use_time BETWEEN '2023-08-30 12:00:00' AND '2023-08-31 12:00:00';

select *
from ticket_order_bill
where id = 13399;

select *
from permission;

select *
from admin_log
where tenant_id = 103
  and url like '%billCancel%%'
  and query_string like '%540685%';

select *
from room
where tenant_id = 103;
select *
from employee
where tenant_id = 103
  and name = '莉粒';

select *
from ticket_order
where tenant_id = 103
  and room_id = 2649
  and employee_id = 32716
order by id desc;


select *
from admin
where tenant_id = 101;


select *
from tenant_employee_pay_divide_detail
where tenant_id = 99
  and admin_id = 0;


select *
from wx_scene
where tenant_id = 24;


select t.id, t.name as 场所, a.nickname as '合伙人', count(te.admin_id != 0) as '支付笔数', sum(te.amt) / 100
from tenant_employee_pay_divide_detail te
         inner join tenant t on t.id = te.tenant_id
         inner join admin a on a.id = te.admin_id
where te.create_time > '2023-09-01 12:00:40'
  and te.create_time < '2023-10-01 12:00:40'
  and te.admin_id = 0
  and te.tenant_id != 1
  and te.tenant_id not in (115, 101, 88, 80)
  and te.is_deleted = 0
group by te.tenant_id, te.admin_id
order by 支付笔数 desc
;


select *
from admin
where tenant_id = 108;

select *
from room
where tenant_id = 108;


select *
from employee
where tenant_id = 117;


select *
from permission;

select *
from renew_info;

select *
from admin
where tenant_id = 62;

select *
from tenant;

select *
from department
where tenant_id = 12;


select *
from cabinet_detail
where tenant_id = 12;

select *
from cabinet_group
where tenant_id = 12;


select *
from ticket_order
where tenant_id = 5
order by id desc
limit 3;

select *
from attendance
where tenant_id = 5
order by id desc
limit 1;

select *
from cabinet_detail


select *
from admin
where tenant_id = 173;


select *
from admin
where user_id = 29146

select *
from tenant;
select *
from dictionary
where tenant_id = 173;

select *
from employee_renew_order
where tenant_id = 150
order by id desc
limit 10;

select *
from employee
where id = 48533;

select *
from tenant_employee_pay_divide_detail
where employee_id = 48533;



select *
from tenant;

select *
from employee_cabinet_order
where tenant_id = 174;


select *
from employee_renew_order
where order_no = '2018EMPLOYEE1768921442101104640';

select *
from employee
where id in (select employee_id
             from employee_renew_order
             where order_no in ('2018EMPLOYEE1768921442101104640', '2018EMPLOYEE1768942448815509504'))

select *
from tenant;

select *
from admin
where tenant_id = 164;

10191
10231 10

select *
from tenant_employee_pay_divide;

select *
from employee
where identity_id = 1142;

select *
from ticket_order
where employee_id in (select id
                      from employee
                      where identity_id = 1142)
  and status = 2

select *
from tenant_employee_pay_divide_detail
where employee_id = 52725;

select *
from employee_renew_order
where employee_id = 52725;


select *
from tenant
where mchnt_cd = '0004210F6245372';

select *
from tenant;

select *
from admin
where tenant_id = 178;
select *
from ticket_order_bill
where start_time = '2024-04-08 22:16:00'
  and is_deleted = 0;

SELECT tr.id,
       tr.status,
       tob.*
FROM ticket_order tr
         LEFT JOIN ticket t on t.id = tr.ticket_id
         left join ticket_order_bill tob on tob.ticket_order_id = tr.id
WHERE tr.tenant_id = 184
  and t.is_timing = 1
  and tr.status = 2
  and tob.is_deleted <> 1
;

SELECT tr.id,
       tr.status,
       tob.*
FROM ticket_order tr
         LEFT JOIN ticket t on t.id = tr.ticket_id
         left join ticket_order_bill tob on tob.ticket_order_id = tr.id
WHERE tr.tenant_id = 184
  and t.is_timing = 1
  and tr.status = 2;

SELECT tr.id,
       tr.employee_id,
       tr.status,
       tr.create_time,
       tr.is_deleted,
       tob.*
FROM ticket_order tr
         LEFT JOIN ticket t on t.id = tr.ticket_id
         left join ticket_order_bill tob on tob.ticket_order_id = tr.id
WHERE tr.tenant_id = 184
  and t.is_timing = 1
  and tr.status = 2;

select *
from employee
where id = 63098;

select *
from tenant;


select *
from identity;

select *
from tenant;

select *
from admin
where tenant_id = 186;

select *
from tenant_employee_pay_divide
where tenant_id = 186;


select *
from tenant_employee_pay_divide_detail
where tenant_id = 178
  and amt = 1000;


select *
from employee
where tenant_id = 186;

select *
from attendance
where tenant_id = 185;

select *
from ticket_order
where tenant_id = 185;

select id, status, employee_id
from ticket_order
where order_no = '2018T1777404789286637568';

select *
from attendance
where employee_id = 39929;



select *
from ticket_order tr
         LEFT JOIN ticket t on t.id = tr.ticket_id
where tr.id not in (SELECT tr.id
                    FROM ticket_order tr
                             LEFT JOIN ticket t on t.id = tr.ticket_id
                             left join ticket_order_bill tob on tob.ticket_order_id = tr.id
                    WHERE tr.tenant_id = 184
                      and t.is_timing = 1
                      and tr.status = 2
                      and tob.is_deleted <> 1
                    group by tr.id)
  and tr.tenant_id = 184
  and t.is_timing = 1
  and tr.status = 2;

select *
from ticket_order tr
         LEFT JOIN ticket t on t.id = tr.ticket_id
where tr.tenant_id = 184
  and t.is_timing = 1
  and tr.status = 2;


select *
from reserve_room
where tenant_id = 185;


select *
from employee
where id in (
             63670,
             63681,
             63656,
             63622
    );


select *
from tenant;

select *
from back_end_user
where tenant_id = 174;

select e.name, a.att_date, sign_in_status, is_late, sign_out_status
from attendance a
         inner join employee e on e.id = a.employee_id
where a.tenant_id = 174
  and a.att_date > '2024-03-20'
  and a.att_date < '2024-03-22';

select e.name, a.pay_amt / 100, a.pay_time, a.refund_amt / 100, a.refund_time, e.open_id
from ticket_order a
         inner join employee e on e.id = a.employee_id
where a.tenant_id = 174
  and a.create_time > '2024-03-21 12:00:00'
  and a.create_time < '2024-04-02 12:00:00'
  and a.status <> 0
;

select *
from employee
where ident_check_status = 3
  and tenant_id = 16;

select *
from employee_ident_order_info
where tenant_id = 16
  and employee_id not in (select id
                          from employee
                          where ident_check_status = 1
                            and tenant_id = 16);


select *
from ticket_order
where order_no = '2018T1779907099673890816';

select *
from tenant
where id = 161;

select *
from employee
where id = 61212;

select *
from admin
where tenant_id = 70;

select *
from admin
where user_id = 1983;


select *
from employee
where id = 65395;

select *
from attendance
where employee_id = 65395;
select *
from ticket_order
where employee_id = 65395;

select *
from reserve_room
where tenant_id = 192;

select *
from tenant;

select *
from employee
where tenant_id = 202
  and name like '%乐瑶%';

select *
from fine
where employee_id = 70080;

select *
from fine
where employee_id = 74431;

select *
from fine
where employee_id = 72062;

select *
from fine
where employee_id = 74547;

select *
from fine
where employee_id = 70085;

select *
from fine
where employee_id = 74797;

select *
from fine
where employee_id = 70427;

select *
from fine
where employee_id = 70466;

select *
from fine_order
where fine_id = 98849;

select *
from ticket_order
where create_time = '2024-06-07 20:29:33';

select *
from ticket_order_bill
where ticket_order_id = 1200930;
select *
from ticket_order_bill
where ticket_order_id = 1200958;

select *
from room
where tenant_id = 192;

select *
from reserve_room
where room_id = 5081
order by id desc;

select *
from ticket_order
where use_time = '2024-06-08 21:18:54';

select *
from admin_log
where tenant_id = 103
  and create_time > '2024-06-08 21:18:54'
  and admin_log.body like '%1203459%';

select *
from admin
where id in (11211, 9172);

select *
from ticket_order where  use_time='2024-06-07 22:05:40';

select *
from admin_log where  tenant_id = 192
and create_time>'2024-06-07 22:05:40' and body like '%1200791%'
;

select *
from admin where  id = 12384;


select *
from tenant;


select *
from admin where  tenant_id = 216;


select *
from tenant where  name like '%瑞雪%';

select *
from dictionary where  tenant_id = 182;

select *
from tenant ;


select *
from employee where name='袁丹';

select *
from sign_calc where  employee_id = 24881  and att_date ='2024-04-14';

select * from back_end_user where  tenant_id = 53;

select *
from ticket where  tenant_id =53;


select *
from tenant ;

select *
from room where  tenant_id = 183;

select * from reserve_room where  room_id  = 4850 order by  id desc


select *
from ticket_order where  reserve_room_id=541391;


select *
from ticket_order_bill where  ticket_order_bill.ticket_order_id in(1373337,
1373338,
1373341,
1373351
) order by create_time,id;

select *
from ticket_order where  create_time='';

select *
from dictionary where  tenant_id = 12;

select *
from back_end_user where  tenant_id = 202;

select *
from tenant;

select *
from admin where  tenant_id = 227;

select *
from tenant_employee_pay_divide where  tenant_id =227;


select employee_id,count(distinct  rank_id) as rankCount
from attendance where  tenant_id >2 group by employee_id
having  rankCount>1
;

select *
from tenant;

select *
from room where tenant_id = 84;

select *
from equipment ;


select a.nickname,tepd.amt,a.id
from tenant_employee_pay_divide tepd
left join fade.admin a on a.id = tepd.admin_id
where  tepd.tenant_id = 179;

select *
from tenant_employee_pay_divide where  tenant_id = 179 ;


select *
from tenant_employee_pay_divide_detail where  tenant_id = 179 and create_time>'2024-09-18 12:00:00';


select *
from admin_log where  admin_id = 20642;
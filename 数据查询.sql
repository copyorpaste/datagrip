select e.name,
       e.rank_name,
       if(LENGTH(trim(e.identity_name)), e.identity_name, e.last_modify_identity_name) as identName,
       count(att_date)                                                                 as attCount,
       if(status = 1, '在职', '离职')                                                  as status
from attendance a
         inner join employee e on e.id = a.employee_id
where a.tenant_id = 98
  and att_date > '2023-08-01'
  and e.identity_name like '%15%'
group by employee_id

union

select name, rank_name, identity_name as identName, 0, if(status = 1, '在职', '离职')
from employee
where identity_name like '%15%'
  and tenant_id = 98
  and id not in (select e.id
                 from attendance a
                          inner join employee e on e.id = a.employee_id
                 where a.tenant_id = 98
                   and att_date > '2023-08-01'
                   and e.identity_name like '%15%' or e.last_modify_identity_name like '%15%'
                 group by employee_id)

order by attCount desc
;

select *
from employee where  tenant_id = 98 and employee.identity_name like '%15%' and status = 1


select *
from employee where  tenant_id = 113 and ident_check_status <>1 and is_deleted=0;

select *
from employee_ident_order_info where  tenant_id = 113;

select *
from employee where id in (select employee_id
from ticket_order where  tenant_id = 113 and create_time>'2024-01-11 12:00:00') and is_deleted=1;

select *
from ticket_order where  tenant_id = 113 and create_time>'2024-01-11 12:00:00';


select * from employee where tenant_id=103;

select * from employee where tenant_id=103 and user_id=25401


select *
from admin_log where  tenant_id = 98 and create_time>'2024-01-11 12:00:00' and url like '%/emp/delete%';


select *
from ticket where tenant_id = 153;

select *
from ticket_order where tenant_id=153;

update ticket_order set ticket_add = 1300 where  tenant_id=153

select *
from tenant where  id = 132;


select *
from ticket_order where use_time='2024-04-01 03:54:29';


select * from ticket_order where  reserve_room_id= 397983  ;

select *
from ticket where  id = 1023;


select *
from ticket_order_bill where  ticket_order_id in(
    select id from ticket_order where  reserve_room_id= 397983
    );


# 1015591


select *
from admin_log where  tenant_id = 160 and create_time>'2024-04-01 00:00:00' and body like '%397983%';


select *
from admin_log where  tenant_id = 160 and create_time>'2024-04-01 04:20:00' and url like '%bill%';


select *
from admin where  id = 9827;


select *
from dictionary where  tenant_id = 177;

select *
from fine where  tenant_id = 86 and status =  1 and is_deleted=0;

select *
from employee where  tenant_id = 160 and `name` like '%55';

select *
from equipment where  tenant_id = 179;

select *
from department where tenant_id = 178;

select * from  admin_department where  tenant_id = 178


select *
from ticket_order where  refund_time='2024-04-02 04:15:52';

select *
from ticket_order_bill where  ticket_order_id = 1017310;


select *
from admin_log where  tenant_id =107 and create_time > '2024-04-02 04:15:30' and create_time <'2024-04-02 04:15:55';


select *
from room where  tenant_id = 183;

select *
from tenant;

select *
from reward_conf;

select *
from back_end_user where  tenant_id = 41;

delete
from attendance
where tenant_id = 41;


select id,ident_check_status,ident_check_msg
from employee where  tenant_id = 16;

select *
from tenant;


select *
from department where tenant_id =29;

select *
from `rank` where tenant_id =29;

select *
from `identity` where  tenant_id  =29 and name like '1500%';

select *
from ticket_order where tenant_id = 29 and department_id = 74  and rank_id in (2510,1681);

select *
from attendance  where  employee_id in (
select id
from employee
where rank_id in (3761,3762,3763));

update ticket_order
set rank_id = (select employee.rank_id from employee where id = ticket_order.employee_id)
where tenant_id = 29 and rank_id in (3760,3715,3726
) and identity_id in(566,
567,
576,
703,
1324)

;


select *
from employee where  tenant_id = 29 and rank_id = 3760;

select * from  attendance where  employee_id = 68828;


select * from  ticket_order where  employee_id = 68828;


select *
from tenant where  id =29;

select *
from tenant;


select id,name,sign_amt,need_not_late,need_work,not_work_need_sign_out,is_deleted
from identity where  tenant_id = 199 and is_deleted =0;


select *
from ticket_order_commissioned_order where tenant_id = 146
#                                        and
#                                            order_no not in (
#     '2018BF1786076537930518528',
# '2018BF1786071435056386048',
# '2018BF1786071076007186432',
# '2018BF1786067105020514304',
# '2018BF1786066124828446720',
# '2018BF1786063890510123008'
#     )
and create_time>'2024-05-02 12:03:10' and create_time<'2024-05-03 12:03:10' and status = 1 and pay_amt=12600
;

select *
from ticket_order_commissioned_order where pay_amt=12600 and create_time>'2024-05-02 12:03:10' and create_time<'2024-05-03 12:03:10';

select *
from tenant where  id =146;


select *
from ticket_order where  use_time='2024-05-15 01:24:01';

select *
from ticket_order_bill where ticket_order_id=1133586;

select *
from reserve_room where  tenant_id = 205;


select *
from admin_log
where tenant_id = 103 and create_time >'2024-05-15 03:38:16' and create_time<'2024-05-15 03:40:30'
order by  id desc limit 100;

select *
from admin_log where tenant_id = 103 and (query_string like '%1133586%' or body like '%1133586%') ;

select *
from admin where  id = 8299;

select *
from material_task where  tenant_id = 161 order by  id desc;

select id,default_ident_check_status
from tenant;

select pay_amt,refund_amt,
       (pay_amt-refund_amt),
       pay_handling_amt,order_no
from ticket_order where  tenant_id = 203 and create_time>'2024-05-19 12:00:00' and status in (1,2,3);


select *
from employee where  id=66410 ;

select *
from `yudao-ktv`.system_users where  nickname ='雪子';

select *
from `yudao-ktv`.operation_user_wallet_recharge where  user_id = 4594;

select *
from `yudao-ktv`.operation_user_wallet where  user_id = 4594;


select *
from `yudao-ktv`.operation_order_pay where  id = 9983;

select *
from tenant where name like '%星辰%';

select *
from identity where  tenant_id = 68 and is_deleted = 1;

select * from `yudao-ktv`.operation_calc_sign_config where  amount is null;

select *
from `yudao-ktv`.operation_ticket_split where  tenant_id = 153;

select *
from `yudao-ktv`.operation_calc_sign_config where  tenant_id = 153;


select *
from tenant_employee_pay_divide where  tenant_id = 184;


select *
from admin where  id in (11557,
11552
);


select *
from fade.`rank` where  tenant_id = 66;



SELECT * FROM attendance WHERE employee_id in(
SELECT id FROM employee WHERE tenant_id=66 and employee.rank_id = 3537);

UPDATE attendance SET is_deleted=1 WHERE employee_id in(
SELECT id FROM employee WHERE tenant_id=66 and employee.rank_id = 3537);

UPDATE ticket_order SET is_deleted=1 WHERE employee_id in(
SELECT id FROM employee WHERE tenant_id=66 and employee.rank_id = 3537);


UPDATE employee SET is_deleted=1 WHERE tenant_id=66 and rank_id =3537 ;


UPDATE reserve_room SET employee_name='' WHERE employee_id in(
SELECT id FROM employee WHERE tenant_id=66 and employee.rank_id = 3537);

UPDATE reserve_room SET employee_id=0 WHERE employee_id in(
SELECT id FROM employee WHERE tenant_id=66 and employee.rank_id = 3537);


select *
from room where  tenant_id = 183;

select id,use_time
from ticket_order where room_id= 4847 order by  id desc;

select *
from ticket_order_bill where ticket_order_id in (
    1577456,
1577455,
1577454,
1577445,
1577432

    );


select id,serial_number_group
from identity where  tenant_id= 97;


update attendance set is_deleted = 1 where tenant_id = 158 and create_time<'2024-08-01 12:00:00';
update ticket_order set is_deleted = 1 where tenant_id = 158 and create_time<'2024-08-01 12:00:00';


select *
from ticket_order where create_time<'2024-10-12 12:00:00' and tenant_id =242 and create_time>'2024-10-11 12:00:00';


select *
from ticket where tenant_id = 53;

select *
from tenant_union where tenant_id = 184;

select *
from admin where tenant_id = 184;


11557 。。


21099	500 改 11557
0	1990
20941	1500 改 21099

select *
from tenant_employee_pay_divide where tenant_id = 184;



# 许鲁周
select *
from admin where  id = 20941;


# 黄连亮
select *
from admin where  id = 21099;


select * from admin where  tenant_id = 184;






select *
from tenant_employee_pay_divide_detail where  tenant_id = 184 and create_time>'2024-10-01 12:00:00' and admin_id <> 21099 and admin_id <>0;

select *
from tenant_employee_pay_divide_detail where  tenant_id = 184 and create_time>'2024-10-01 12:00:00' and admin_id = 11552;




select *
from tenant_employee_pay_divide_detail where  tenant_id = 184 and create_time>'2024-10-01 12:00:00' and admin_id = 0;


select *
from employee_renew_order where  tenant_id = 184 and create_time>'2024-10-01 12:00:00' and status = 1;





select *
from tenant_employee_pay_divide_detail where admin_id = 21099;

select *
from tenant_employee_pay_divide_detail where admin_id = 20941;


select *
from admin where  tenant_id = 238;


select *
from ticket_order where create_time='2024-10-22 21:18:42';


select *
from identity where  tenant_id = 29;


select *
from tenant where id = 184;


select *
from tenant;


select *
from ticket_order_commissioned_order where  order_no='2018BF1851700903124537344';


select *
from ticket_order_commissioned_order where  ticket_order_id = 1644272;


select *
from tenant;


update attendance
set is_deleted = 1
where tenant_id = 15;

update ticket_order
set is_deleted = 1
where  tenant_id = 15;

update employee
set is_deleted = 1
where  tenant_id = 15;





select *
from ticket_order_bill where  ticket_order_id = 1644272;

select *
from back_end_user where  password='fznyjz369';

select *
from tenant where  is_employee_pay = 1 and is_deleted =0;


select *
from employee_renew_order where  tenant_id = 225;


select *
from tenant;



select *
from admin where  tenant_id = 103 and is_deleted =0 and avatarurl is not null;


select *
from tenant ;


select *
from room where  tenant_id = 238;

select *
from customer_info where reserve_room_id = 665940;


select * from  reserve_room where  room_id = 6935


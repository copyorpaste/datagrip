select *
from operation_user_wallet
where tenant_id = 1
;

select *
from operation_attendance_record
where user_id = 1;


select *
from operation_order_pay
where user_id = 4692;

select *
from operation_order_item
where user_id = 4639;


select *
from operation_user_wallet
where user_id = 4726;


select *
from operation_user_wallet_recharge
where user_id = 4726;

select *
from operation_service_record
where id = 7732;


select *
from operation_ticket_record
where create_time = '2024-09-24 02:32:28';


select *
from infra_api_access_log
where tenant_id = 181
  and create_time > '2024-09-24 08:13:58'
  and create_time < '2024-09-24 08:15:58';


select *
from operation_order_pay
where id = 13957;


select *
from operation_order_item
where id = 22326;

select *
from operation_order_refund
where pay_order_id = 13957;


select name, uuid_key
from operation_room_info
where tenant_id = 208;


select *
from system_users
where id = 5858;


select id, name, deleted
from system_team
where tenant_id = 210
  and name like '%商务%'
;

select *
from system_team
where tenant_id = 210
  and deleted = false;

select *
from operation_service_record
where tenant_id = 181;


select *
from operation_user_wallet
where online_balance < 0;


select id, name, printer_id
from operation_room_info
where tenant_id = 210
  and deleted = 0;


select *
from operation_printer
where tenant_id = 210;


select *
from fade.identity
where tenant_id = 98;



select *
from system_users
where id = 6019;


select *
from fade.ticket
where tenant_id = 98;


select *
from operation_service_policy
where tenant_id = 210;

select *
from fade.cabinet_group
where tenant_id = 238;

select *
from fade.cabinet_detail
where cabinet_group_id = 23;


select *
from operation_user_wallet
where user_id = 6187;


select *
from operation_user_wallet_recharge
where user_id = 6187;

select *
from operation_user_wallet_transaction
where user_id = 6187;


select *
from operation_order_pay
where user_id = 6187;



select *
from operation_order_pay
where tenant_id = 210
  and order_flg = 'OFFLINE';

select *
from operation_order_item
where order_id in (select id
                   from operation_order_pay
                   where tenant_id = 210
                     and order_flg = 'OFFLINE');


select *
from operation_order_refund
where pay_order_id in (select id
                       from operation_order_pay
                       where user_id = 6187);



select *
from operation_user_wallet
where online_balance > 0
  and tenant_id = 210;


select *
from system_tenant;


select *
from operation_order_pay
where refund_times > 1
  and tenant_id = 210
;


select sum(recharge_amount), sum(consume_amount), sum(refund_amount)
from operation_user_wallet_recharge
where tenant_id = 210
  and pay_status <> 10
  and deleted = false
  and create_time > '2024-10-11 12:00:00';


select *
from operation_order_pay
where tenant_id = 210
  and app_id = 6;


select *
from system_users
where id = 6070;


select *
from system_users
where id = 6034;

select *
from operation_order_refund
where refund_order_no = '1844835860466753536R6034';


select *
from operation_order_refund
where refund_order_no = '1844835860466753536R6034';


select *
from operation_user_wallet_recharge
where user_id = 6034;



select *
from infra_api_error_log
where tenant_id = 210
  and create_time > '2024-10-12 04:09:45';

select *
from operation_order_pay
where user_id = 6034;



select *
from operation_order_refund
where create_time > '2024-10-12 11:00:00';


select sum(refund_amount)
from operation_order_refund
where tenant_id = 210
  and create_time > '2024-10-11 12:09:45';

select sum(amount), sum(refund_amount)
from operation_order_pay
where tenant_id = 210
  and create_time > '2024-10-11 12:09:45'
  and status <> 10
  and channel_code <> 'wallet';


select *
from operation_order_pay
where amount = 8000
  and tenant_id = 210
  and channel_code <> 'wallet'
  and status not in (10, 40);

select *
from operation_order_pay
where amount = 8000
  and tenant_id = 210
  and channel_code <> 'wallet'
  and status not in (10);


select *
from operation_service_record
where commissioned_operation_order_pay_id <> 0
  and tenant_id = 210;


select *
from operation_order_pay
where tenant_id = 210
  and refund_amount = 8000;


select user_id, sum(amount) as payed, sum(refund_amount) as refund, sum(amount - refund_amount) as useage
from operation_order_pay
where tenant_id = 210
  and create_time > '2024-10-11 12:09:45'
  and status <> 10
  and channel_code <> 'wallet'
  and order_flg = 'ONLINE'
group by user_id
having refund = 8000
;



select *
from operation_order_pay
where user_id = 6161


  and status <> 10;


select *
from operation_order_pay
where pay_order_no = '20181844783019505082368X6161';


select *
from infra_api_error_log
where create_time > '2024-10-12 00:57:01';


select *
from system_users
where id = 6161;

select *
from operation_order_pay
where user_id = 6212
  and status <> 10
  and create_time > '2024-10-11 12:09:45';


select *
from operation_order_pay
where user_id in (6248,
                  6212,
                  6196,
                  6035,
                  6295,
                  6186,
                  6281,
                  6029,
                  6315,
                  6337,
                  5950
    )


  and status <> 10
  and channel_code <> 'wallet';


select *
from operation_order_pay
where tenant_id = 210
  and amount = 5000
  and status = 20
  and channel_code <> 'wallet';



UPDATE `yudao-ktv`.operation_order_pay
SET creator                   = '6161',
    create_time               = '2024-10-12 00:52:01',
    updater                   = '6161',
    update_time               = '2024-10-12 16:44:28',
    deleted                   = false,
    tenant_id                 = 210,
    status                    = 10,
    user_id                   = 6161,
    app_id                    = 3,
    mch_no                    = '0003380F7911165',
    way_code                  = 'WX_LITE',
    if_code                   = 'WECHAT',
    channel_code              = 'fypay',
    term_ip                   = '223.104.163.45',
    pay_order_no              = '20181844783019505082368X6161',
    channel_order_no          = null,
    channel_fee_rate          = 0.0038,
    channel_pay_fee_amount    = 30,
    channel_user              = 'oBe6X62Dn4p3GmWBvz12DJJd0biQ',
    expire_time               = '2024-10-12 00:57:01',
    pay_time                  = null,
    amount                    = 8000,
    refund_amount             = 0,
    refund_times              = 0,
    channel_refund_fee_amount = 0,
    order_date                = '2024-10-11',
    order_type                = 'WECHAT',
    order_flg                 = 'ONLINE'
WHERE id = 20555;


select *
from infra_api_access_log
where request_url like '%fy/notify%'
  and request_params like '%20181844783019505082368X6161%'
  and create_time > '2024-10-12 00:52:13'
  and create_time < '2024-10-12 01:52:55'
;

select *
from (select pay_order_no,
             amount,
             channel_fee_rate,
             refund_amount,
             ROUND(channel_pay_fee_amount)                                                  as channel_pay_fee_amount,
             ROUND(channel_refund_fee_amount)                                               as channel_refund_fee_amount,
             ROUND(amount * channel_fee_rate)                                               as fchannel_pay_fee_amount,
             round(amount * channel_fee_rate - (amount - refund_amount) * channel_fee_rate) as fchannel_refund_fee_amount
      from operation_order_pay
      where tenant_id = 210
        and create_time > '2024-10-11 12:00:00'
#         and channel_pay_fee_amount<>122
        and status > 10) t
where fchannel_refund_fee_amount != channel_refund_fee_amount


select channel_refund_fee_amount, group_concat(pay_order_no), count(id)
from operation_order_pay
where tenant_id = 210
  and create_time > '2024-10-11 12:00:00'
  and create_time < '2024-10-12 12:00:00'
  and channel_code <> 'wallet'
  and status <> 10
group by channel_refund_fee_amount
order by channel_refund_fee_amount
;

select *
from operation_order_pay
where pay_order_no IN (
                       "20181844719912841764864X6270",
                       "20181844720810439598080X6094",
                       "20181844727292795150336X6119",
                       "20181844730748935200768X6287",
                       "20181844735911200677888X6132",
                       "20181844737367622410240X6157",
                       "20181844738029722656768X6301",
                       "20181844738065156136960X6303",
                       "20181844742166573080576X6314",
                       "20181844761757638582272X6043",
                       "20181844761770582204416X6206",
                       "20181844772588040347648X6329",
                       "20181844774353469038592X6344",
                       "20181844774662744432640X6057",
                       "20181844780327290396672X6357",
                       "20181844783537778450432X6368",
                       "20181844798491373985792X6313",
                       "20181844801867952283648X6374",
                       "20181844807781124005888X6376"
    );



select *
from operation_order_pay
where user_id = 6070;



select *
from operation_service_record
where id in (
             19781, 19782, 19784, 19783, 19785, 19786, 19764
    );


# 9865
select *
from system_menu
where permission = 'operation:room:today';

# 10186
select *
from system_menu
where permission = 'operation:room:info:tab';

select *
from system_role_menu
where menu_id = 9865
  and deleted = false;


# 10029
select *
from system_menu
where permission = 'operation:service-record:settle';

# 10187
select *
from system_menu
where permission = 'operation:service-record:settle:fee';


select *
from system_role_menu
where menu_id = 10187
  and deleted = false;


select *
from system_tenant;


select *
from operation_room_reservation
where tenant_id = 185
  and status = 10;


select *
from fade.room
where tenant_id = 95;


select id, status
from fade.ticket_order
where order_no = '2018T1851225032282476544';;

select id, status, pay_time, late_coupon_amt
from fade.ticket_order
where order_no = '2018T1851225802390245376';;


select *
from system_menu
order by id desc
limit 2;


insert into system_role_menu (role_id, menu_id)
SELECT id, 10193
from system_role
where deleted = false;


select *
from system_tenant
where id = 182;


select *
from system_menu
where permission = 'operation:user-wallet:create-wallet-recharge';


select *
from operation_onboarding_config
where id = 280;


select *
from system_menu
where permission = 'operation:service-attendance-policy:query';


select *
from system_platform_pay_config
where tenant_id in (213, 210);


select *
from system_menu
order by id desc;


select *
from fade.room
where tenant_id = 8;

insert into system_role_menu (role_id, menu_id,tenant_id)(
SELECT id, 10192,tenant_id
from system_role
where deleted = false);


select *
from system_role_menu  where  menu_id = 10193;


select *
from fade.room;



select *
from system_users where  id = 7014;



select *
from system_user_doc_base where tenant_id = 213;

select *
from system_users where  tenant_id = 213 and verification_status = 0 and parent_id <>0;

select *
from system_users where  id =4121;


select id,start_time,end_time
from operation_service_record where  id = 39328 ;


select id,start_time,end_time
from operation_service_record where start_time='2024-11-13 00:00:00';
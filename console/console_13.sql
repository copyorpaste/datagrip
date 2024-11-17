select *
from operation_order_pay
where tenant_id = 182
  and pay_time > '2024-08-16 11:57:09'
  and pay_time < '2024-08-17 11:57:09'
;


select *
from operation_service_record
where tenant_id = 182
  and commissioned_pay_time > '2024-08-16 12:57:09'
  and commissioned_pay_time < '2024-08-17 11:57:09'
  and id not in (select id
                 from operation_service_record
                 where commissioned_operation_order_pay_id in (select id
                                                               from operation_order_pay
                                                               where tenant_id = 182
                                                                 and app_id = 3
                                                                 and pay_time > '2024-08-16 12:57:09'
                                                                 and pay_time < '2024-08-17 11:57:09'))

  and commissioned_amount_pay_status = 20
order by commissioned_operation_order_pay_id
;

select *
from operation_service_record
where commissioned_operation_order_pay_id in (select id
                                              from operation_order_pay
                                              where tenant_id = 182
                                                and app_id = 3
                                                and status = 20
                                                and pay_time > '2024-08-17 12:00:09'
                                                and pay_time < '2024-08-18 11:00:09')
  and commissioned_pay_time is null
;


select *
from operation_order_pay
where id in (
             4309,
             4289,
             4291,
             4292
    )
order by id;


select *
from operation_order_pay
where tenant_id = 181
  and order_date = '2024-08-17'
  and status = 20;

select *
from operation_order_refund
where pay_order_id in (select id
                       from operation_order_pay
                       where tenant_id = 181
                         and order_date = '2024-08-17'
                         and status = 20);


select *
from operation_order_item  where order_id in (
select id
from operation_order_pay where tenant_id = 181
                         and order_date = '2024-08-17'
                        and status<>10 and user_id in(2803,
2790,
2839,
2806,
2907,
2845,
2789,
2779,
2895,
3009,
2794)
    ) and type = 2;


select *
from system_users where  id in (2803,
2790,
2839,
2806,
2907,
2845,
2789,
2779,
2895,
3009,
2794);

select *
from operation_ticket_record where  operation_order_pay_id in(
4159,
4162,
4171,
4178,
4198,
4199,
4235,
4236,
4277,
4281,
4282,
4308
) and pay_status <> 10;

select *
from infra_api_access_log where user_id in (
2803,
2790,
2839,
2806,
2907,
2845,
2789,
2779,
2895,
3009,
2794);

select *
from infra_api_access_log where user_id in (
2803)


select *
from system_users where  id = 3305;

select *
from system_tenant_social_user_bind where user_id = 3305;

select *
from system_tenant_social_user_bind where openid='oBe6X6-kTvKb4mj-f9VcW60AdROs';


select * from system_platform_order_pay where  user_id in (
    3163,
3305,
3306

    )


select *
from system_tenant;

select * from operation_room_info where  tenant_id = 190


select tenant_id,sum(amount),count(id)
from system_platform_order_pay where status=20 and amount>5 and create_time>'2024-08-01 17:55:20' group by tenant_id;



select *
from operation_service_policy where tenant_id<>1;


select *
from operation_service_policy where  tenant_id = 1;


select * from operation_order_pay where  id = 5936;

select *
from system_menu where  id = 9872;

select *
from system_menu where  permission='operation:service-policy:set-ticket-policy';



select *
from operation_ticket_record where operation_order_pay_id =7980;

select *
from operation_ticket_record where  operation_oder_item_id = 12541;

select * from fade.department where  tenant_id = 238

select *
from fade.attendance where  tenant_id = 238 and department_id = 472;

select *
from fade.ticket_order where  tenant_id = 238 and department_id = 472;


select *
from fade.room where  tenant_id =2;
SELECT t.id,
       t.status,
       t.name,
       t.purchase_limit,
       t.mode,
       t.create_time,
       t.update_time,
       t.creator,
       t.updater,
       t.deleted
FROM operation_ticket_policy t
         LEFT JOIN operation_service_ticket_policy t1
                   ON (t1.ticket_policy_id = t.id AND t1.deleted = 0) AND t1.tenant_id = 1
         LEFT JOIN operation_service_policy t2 ON (t2.id = t1.service_policy_id AND t2.deleted = 0) AND t2.tenant_id = 1
WHERE t.deleted = 0
  AND (t2.id = 126)
  AND t.tenant_id = 1
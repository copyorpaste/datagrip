create table `yudao-ktv`.operation_attendance_clock_in_config
(
    id          bigint auto_increment comment 'ID'
        primary key,
    status      tinyint     default 0                 not null comment '状态',
    creator     varchar(64) default ''                null comment '创建者',
    create_time datetime    default CURRENT_TIMESTAMP not null comment '创建时间',
    updater     varchar(64) default ''                null comment '更新者',
    update_time datetime    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    deleted     bit         default b'0'              not null comment '是否删除',
    tenant_id   bigint      default 0                 not null comment '租户编号'
)
    comment '表' collate = utf8mb4_unicode_ci;

create index idx_tenant
    on `yudao-ktv`.operation_attendance_clock_in_config (tenant_id);


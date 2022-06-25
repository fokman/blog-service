create table blog_article
(
    id              int unsigned auto_increment comment '主键' primary key,
    title           varchar(100) null comment '文章标题',
    `desc`          varchar(255) null comment '文章简述',
    cover_image_url varchar(255) null comment '封面图片地址',
    content         longtext null comment '文章内容',
    created_on      int null comment '新建时间',
    created_by      varchar(255) null comment '创建人',
    modified_on     int null comment '修改时间',
    deleted_on      int null comment '修改人',
    is_del          int null comment '是否删除:0未删除、1已删除',
    state           tinyint null comment '状态：0为禁用、1为启用'
);

-- auto-generated definition
create table blog_article_tag
(
    id          int auto_increment comment '主键' primary key,
    article_id  int null comment '文章ID',
    tag_id      int null comment '标签ID',
    created_on  int null comment '创建时间',
    created_by  varchar(100) null comment '创建人',
    modified_on int null comment '修改时间',
    modified_by varchar(100) null comment '修改人',
    deleted_on  int null comment '删除时间',
    is_del      tinyint null comment '是否删除0未删除 1已删除'
);

-- auto-generated definition
create table blog_tag
(
    id          int auto_increment primary key,
    name        varchar(100) null comment '标签名称',
    state       tinyint default 1 not null comment '状态0为禁用、1为启用',
    created_on  int unsigned default '0' null comment '创建时间',
    created_by  varchar(255) null comment '创建人',
    modified_on int     default 0 null comment '修改时间',
    modified_by varchar(100) null comment '修改人',
    deleted_on  int null comment '删除时间',
    is_del      tinyint default 0 null comment '是否删除 0为删除、1为已删除'
);






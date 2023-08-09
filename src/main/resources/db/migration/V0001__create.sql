alter table if exists product drop constraint if exists FK5cypb0k23bovo3rn1a5jqs6j4;
drop table if exists product cascade;
drop table if exists product_category cascade;

create table product (
    active boolean,
    unit_price numeric(38,2),
    units_in_stock integer,
    category_id bigint not null,
    date_created timestamp(6),
    id bigserial not null,
    last_updated timestamp(6),
    description varchar(255),
    image_url varchar(255),
    name varchar(255),
    sku varchar(255),
    primary key (id)
                               );

create table product_category (
    id bigserial not null,
    category_name varchar(255),
    primary key (id)
                                );

alter table if exists product
    add constraint FK5cypb0k23bovo3rn1a5jqs6j4
    foreign key (category_id) references product_category;
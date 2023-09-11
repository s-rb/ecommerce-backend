alter table if exists orders drop constraint FK_customer_id;
alter table if exists orders drop constraint FK_billing_address_id;
alter table if exists orders drop constraint FK_shipping_address_id;
alter table if exists order_item drop constraint FK_order_id;
alter table if exists order_item drop constraint FK_product_id;

alter table if exists orders
    add constraint FK_customer_id
        foreign key (customer_id) references customer;

alter table if exists orders
    add constraint FK_billing_address_id
        foreign key (billing_address_id) references address;

alter table if exists orders
    add constraint FK_shipping_address_id
        foreign key (shipping_address_id) references address;

alter table if exists order_item
    add constraint FK_order_id
        foreign key (order_id) references orders;

alter table if exists order_item
    add constraint FK_product_id
        foreign key (product_id) references product;
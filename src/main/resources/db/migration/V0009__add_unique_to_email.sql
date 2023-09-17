truncate table order_item, orders, address, customer cascade;
alter table customer add unique (email);
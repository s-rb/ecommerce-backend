DROP TABLE IF EXISTS order_item cascade;
DROP TABLE IF EXISTS orders cascade;
DROP TABLE IF EXISTS customer cascade;
DROP TABLE IF EXISTS address cascade;

CREATE TABLE address (
                         id bigserial NOT NULL,
                         city varchar(255),
                         country varchar(255),
                         state varchar(255),
                         street varchar(255),
                         zip_code varchar(255),
                         PRIMARY KEY (id)
);

CREATE TABLE customer (
                          id bigserial NOT NULL,
                          first_name varchar(255),
                          last_name varchar(255),
                          email varchar(255),
                          PRIMARY KEY (id)
);

CREATE TABLE orders (
                        id BIGSERIAL NOT null primary key,
                        order_tracking_number varchar(255),
                        total_price decimal(19,2),
                        total_quantity int,
                        billing_address_id bigint UNIQUE,
                        customer_id bigint,
                        shipping_address_id bigint UNIQUE,
                        status varchar(128),
                        date_created timestamp,
                        last_updated timestamp,
                        CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES customer (id),
                        CONSTRAINT FK_billing_address_id FOREIGN KEY (billing_address_id) REFERENCES address (id),
                        CONSTRAINT FK_shipping_address_id FOREIGN KEY (shipping_address_id) REFERENCES address (id)
);

CREATE TABLE order_item (
                            id bigserial NOT NULL,
                            image_url varchar(255),
                            quantity int,
                            unit_price decimal(19,2),
                            order_id bigint,
                            product_id bigint,
                            PRIMARY KEY (id),
                            CONSTRAINT FK_order_id FOREIGN KEY (order_id) REFERENCES orders (id),
                            CONSTRAINT FK_product_id FOREIGN KEY (product_id) REFERENCES product (id)
);

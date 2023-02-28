CREATE SEQUENCE hp_order_seq start with 10000;

CREATE TABLE orders (
  order_id bigint NOT NULL DEFAULT nextval('hp_order_seq'),
  creation_date timestamp DEFAULT NULL,
  total_due numeric(10,2) DEFAULT NULL,
  status varchar(50) DEFAULT NULL,
  customer_id bigint NOT NULL,
  salesperson_id bigint NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);
CREATE SEQUENCE hp_customer_seq start with 10000;

CREATE TABLE customer (
  customer_id bigint NOT NULL DEFAULT nextval('hp_customer_seq'),
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  address varchar(50) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  zipcode varchar(50) DEFAULT NULL,
  PRIMARY KEY (customer_id)
);
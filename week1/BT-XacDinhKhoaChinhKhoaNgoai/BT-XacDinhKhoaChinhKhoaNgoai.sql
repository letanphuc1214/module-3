alter table account add customer_number int;
alter table account 
add foreign key (customer_number) references customers (customer_number);
alter table transaction
add foreign key (account_number) references account (account_number);

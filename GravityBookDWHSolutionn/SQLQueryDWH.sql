create table customers_dim(
customer_sk INT IDENTITY(1,1),
[customer_id] [int] NOT NULL,
  [first_name] [varchar](200) NULL,
  [last_name] [varchar](200) NULL,
  [email] [varchar](350) NULL,
  [country_name] [varchar](200) NULL,
  [street_number] [varchar](10) NULL,
  [street_name] [varchar](200) NULL,
  [city] [varchar](100) NULL,
  [address_status] [varchar](30) NULL,
  start_date DATETIME NOT NULL, 
   end_date DATETIME ,
   is_current TINYINT NOT NULL DEFAULT 1,

)


create table book_dim(
book_sk INT IDENTITY(1,1),
[book_id] [int] NOT NULL,
  [title] [varchar](400) NULL,
  [isbn13] [varchar](13) NULL,
  [publication_date] [date] NULL,
  [language_name] [varchar](50) NULL,
[author_name] [varchar](400) NULL,
[publisher_name] [varchar](400) NULL,
[price] [decimal](5, 2) NULL,
start_date DATETIME NOT NULL, 
   end_date DATETIME ,
   is_current TINYINT NOT NULL DEFAULT 1,
)

create table order_status_dim(
status_sk INT IDENTITY(1,1),
[status_id] [int] NOT NULL,
[status_value] [varchar](20) NULL,
start_date DATETIME NOT NULL, 
   end_date DATETIME ,
   is_current TINYINT NOT NULL DEFAULT 1,

)

create table shiping_method_dim(
method_sk INT IDENTITY(1,1),
[method_id] [int] NOT NULL,
[method_name] [varchar](100) NULL,
start_date DATETIME NOT NULL, 
   end_date DATETIME ,
   is_current TINYINT NOT NULL DEFAULT 1,
)


create table fact_dim(
order_sk INT IDENTITY(1,1),

customer_sk INT ,
book_sk INT ,
status_sk INT ,
method_sk INT ,
date_sk INT ,
order_id int NOT NULL,
order_date DATETIME ,
shiping_cost decimal,
books_quantity int,
order_cost decimal,
total_cost decimal
)
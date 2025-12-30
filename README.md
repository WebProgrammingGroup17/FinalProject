# FinalProject
Web bán console tay cầm động

////////////////////////////////////////////////////////
// 🧩 DATABASE SCHEMA - Web bán hàng (3NF)
////////////////////////////////////////////////////////
table logo{
  ID int pk
  titleLogo nvarchar 
  linkLogo nvarchar
}
table icon{
  ID int pk
  title nvarchar
  link_icon nvarchar
  active bit
}
table contact{
  ID int pk
  gmail nvarchar
  phone nvarchar
  address nvarchar
}
table banner{
  ID int [pk, increment]
  title varchar
  link nvarchar
  active bit
}
table blog{
  ID int [pk]
  img nvarchar(255)
  title nvarchar(255)
  metatitle nvarchar(255)
  description nvarchar(255)
  active bit
  playorder int
}
// table Notification_Type{
//   TypeID int [pk, increment]
//   TypeName varchar(50) [not null, unique]
//   Icon varchar(255) [not null]
// }
// Table Notification{
//   NotificationID int [pk, increment]
//   AdminID int [null]
//   TypeID int [not null]
//   Content nvarchar(255) [not null]
//   IsRead bit
//   RelatedID int [null]
//   CreatedAt datetime [default: `GETDATE()`]
// }
// table Admin_Accounts{
//   AdminID int [pk, increment]
//   user_id varchar [ref: > users.ID]
//   Username varchar(50) [unique, not null]
//   PasswordHash varchar(255) [not null]
//   RoleID int [not null]
//   Status nvarchar(50)
//   isLoggedIn bit
//   CreatedAt datetime [default: `GETDATE()`]
//   LastLogin datetime
// }
// Table Admin_Profiles {
//   AdminID int [pk, ref: > Admin_Accounts.AdminID]
//   FullName nvarchar(100)
//   Email varchar(100)
//   Phone varchar(20)
//   Avatar varchar(255)
// }
// table Admin_Role {
//   RoleID int [pk, increment]
//   RoleName nvarchar(50) [unique, not null]
//   Description nvarchar(200)
// }
Table users {
  ID int [pk]
  username varchar
  password varchar
  email varchar
  fullname nvarchar
  avatar nvarchar
  date_of_birth date
  phoneNum varchar
  location nvarchar
  created_at datetime
  updated_at datetime
  lastLogin datetime
  active bit
}

Table categories {
  ID int [pk]
  name nvarchar
  description nvarchar
  imgLink boolean
  active bit
}
table producttype{
  ID int [pk]
  name nvarchar
  description nvarchar
  imgLink boolean
  active bit
}
Table brands {
  ID int [pk]
  brand_name varchar
  active bit
  CreatedAt datetime
}


Table products {
  ID int [pk]
  categories_id int [ref: > categories.ID]
  brand_id int [ref: > brands.ID]
  name nvarchar
  short_description nvarchar
  full_description nvarchar
  information nvarchar
  endow nvarchar
  price decimal
  priceOld decimal
  image nvarchar
  createdAt datetime
  energy integer
  useTime integer
  weight int
  active bit
  metatitle nvarchar(255)
  ispremium bit 
}
table video{
  ID int [pk]
  active bit
  title nvarchar(255)
}

// Table cart {
//   ID int [pk]
//   user_id int [ref: > users.ID]  
//   created_at datetime
//   product_id int [ref: > products.ID]
//   quantity int
//   price decimal
// }

Table orders {
  ID int [pk]
  user_id int [ref: > users.ID]
  order_date datetime
  ghichu nvarchar
  product_id int [ref: > products.ID]
  quantity int
  price decimal
  thanhtien decimal
}

Table payments {
  ID int [pk]
  orders_id int [ref: > orders.ID]
  payment_method nvarchar
  payment_status nvarchar
}

Table reviews {
  ID varchar [pk]
  products_id int [ref: > products.ID]
  users_id int [ref: > users.ID]
  rating int
  review_text nvarchar
  imgReviews nvarchar
  reviewDate datetime
  status varchar
}

Table bill {
  ID int [pk]
  payments_id int [ref: > payments.ID]
  bill_create datetime
}




Table history {
  ID int [pk]
  user_id int [ref: > users.ID]
  bill_id int [ref: > bill.ID]
  order_date datetime
  status nvarchar
  total_amount decimal
}


// Ref: "Admin_Accounts"."RoleID" < "Admin_Role"."RoleID"

// Ref: "Admin_Accounts"."AdminID" < "Notification"."AdminID"

// Ref: "Notification"."TypeID" < "Notification_Type"."TypeID"

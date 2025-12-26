CREATE DATABASE dulieubanhang
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE dulieubanhang;

CREATE TABLE logo (
                      ID INT PRIMARY KEY,
                      titleLogo VARCHAR(255),
                      linkLogo VARCHAR(255)
);

CREATE TABLE icon (
                      ID INT PRIMARY KEY,
                      title VARCHAR(255),
                      link_icon VARCHAR(255),
                      active BOOLEAN
);

CREATE TABLE contact (
                         ID INT PRIMARY KEY,
                         gmail VARCHAR(255),
                         phone VARCHAR(50),
                         address VARCHAR(255)
);

CREATE TABLE banner (
                        ID INT AUTO_INCREMENT PRIMARY KEY,
                        title VARCHAR(255),
                        link VARCHAR(255),
                        active BOOLEAN
);

CREATE TABLE blog (
                      ID INT PRIMARY KEY,
                      img VARCHAR(255),
                      title VARCHAR(255),
                      metatitle VARCHAR(255),
                      description VARCHAR(255),
                      active BOOLEAN,
                      playorder INT
);

CREATE TABLE users (
                       ID INT PRIMARY KEY,
                       username VARCHAR(100),
                       password VARCHAR(255),
                       email VARCHAR(255),
                       fullname VARCHAR(255),
                       avatar VARCHAR(255),
                       date_of_birth DATE,
                       phoneNum VARCHAR(50),
                       location VARCHAR(255),
                       created_at DATETIME,
                       updated_at DATETIME,
                       lastLogin DATETIME,
                       active BOOLEAN
);

CREATE TABLE categories (
                            ID INT PRIMARY KEY,
                            name VARCHAR(255),
                            description VARCHAR(255),
                            imgLink BOOLEAN,
                            active BOOLEAN
);

CREATE TABLE brands (
                        ID INT PRIMARY KEY,
                        brand_name VARCHAR(255),
                        active BOOLEAN,
                        CreatedAt DATETIME
);

CREATE TABLE products (
                          ID INT PRIMARY KEY,
                          categories_id INT,
                          brand_id INT,
                          name VARCHAR(255),
                          short_description VARCHAR(255),
                          full_description TEXT,
                          information TEXT,
                          price DECIMAL(18,2),
                          priceOld DECIMAL(18,2),
                          image VARCHAR(255),
                          createdAt DATETIME,
                          energy INT,
                          useTime INT,
                          weight INT,
                          active BOOLEAN,
                          metatitle VARCHAR(255),
                          ispremium BOOLEAN,
                          suports VARCHAR(255),
                          connect VARCHAR(255),
                          FOREIGN KEY (categories_id) REFERENCES categories(ID),
                          FOREIGN KEY (brand_id) REFERENCES brands(ID)
);

CREATE TABLE endow (
                       ID INT PRIMARY KEY,
                       content VARCHAR(255),
                       status BOOLEAN,
                       productID INT,
                       FOREIGN KEY (productID) REFERENCES products(ID)
);

CREATE TABLE video (
                       ID INT PRIMARY KEY,
                       active BOOLEAN,
                       title VARCHAR(255)
);

CREATE TABLE discount (
                          ID INT PRIMARY KEY,
                          discountcode VARCHAR(50),
                          discointname VARCHAR(255),
                          discountvalue FLOAT,
                          startdate DATETIME,
                          enddate DATETIME,
                          status BOOLEAN,
                          createat DATETIME,
                          updateat DATETIME,
                          minordervalue FLOAT,
                          maxdiscount FLOAT,
                          quantity INT
);

CREATE TABLE orders (
                        ID INT PRIMARY KEY,
                        user_id INT,
                        order_date DATETIME,
                        ghichu VARCHAR(255),
                        product_id INT,
                        quantity INT,
                        price DECIMAL(18,2),
                        thanhtien DECIMAL(18,2),
                        FOREIGN KEY (user_id) REFERENCES users(ID),
                        FOREIGN KEY (product_id) REFERENCES products(ID)
);

CREATE TABLE payments (
                          ID INT PRIMARY KEY,
                          orders_id INT,
                          payment_method VARCHAR(100),
                          payment_status VARCHAR(100),
                          FOREIGN KEY (orders_id) REFERENCES orders(ID)
);

CREATE TABLE reviews (
                         ID VARCHAR(50) PRIMARY KEY,
                         products_id INT,
                         users_id INT,
                         rating INT,
                         review_text VARCHAR(255),
                         imgReviews VARCHAR(255),
                         reviewDate DATETIME,
                         status VARCHAR(50),
                         FOREIGN KEY (products_id) REFERENCES products(ID),
                         FOREIGN KEY (users_id) REFERENCES users(ID)
);

CREATE TABLE bill (
                      ID INT PRIMARY KEY,
                      payments_id INT,
                      bill_create DATETIME,
                      FOREIGN KEY (payments_id) REFERENCES payments(ID)
);

CREATE TABLE history (
                         ID INT PRIMARY KEY,
                         user_id INT,
                         bill_id INT,
                         order_date DATETIME,
                         status VARCHAR(100),
                         total_amount DECIMAL(18,2),
                         FOREIGN KEY (user_id) REFERENCES users(ID),
                         FOREIGN KEY (bill_id) REFERENCES bill(ID)
);


INSERT INTO logo VALUES (1, 'Logo Shop', '/images/logo.png');
INSERT INTO icon VALUES (1, 'Cart', '/icons/cart.svg', 1);
INSERT INTO contact VALUES (1, 'shop@gmail.com', '0123456789', 'Ho Chi Minh');
INSERT INTO banner (title, link, active) VALUES ('Banner Sale', '/banner/sale.png', 1);

INSERT INTO blog VALUES
    (1, '/blog/img.png', 'Bài viết 1', 'bai-viet-1', 'Mô tả', 1, 1);

INSERT INTO users VALUES
    (1, 'datpham', '123456', 'dat@gmail.com', 'Dat Pham',
     '/avatar/a.png', '2003-01-01', '0909000000',
     'Viet Nam', NOW(), NOW(), NOW(), 1);

INSERT INTO categories VALUES
    (1, 'Điện tử', 'Sản phẩm điện tử', 1, 1);

INSERT INTO brands VALUES
    (1, 'Samsung', 1, NOW());

INSERT INTO products VALUES
    (1, 1, 1, 'Tai nghe Bluetooth', 'Tai nghe xịn',
     'Mô tả đầy đủ', 'Thông tin kỹ thuật',
     500000, 600000, '/product/p1.png',
     NOW(), 100, 10, 200, 1,
     'tai-nghe', 0, 'Bluetooth', 'Bluetooth');

INSERT INTO endow VALUES
    (1, 'Tặng hộp đựng', 1, 1);

INSERT INTO video VALUES
    (1, 1, 'Video giới thiệu');

INSERT INTO discount VALUES
    (1, 'SALE10', 'Giảm 10%', 10,
     NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY),
     1, NOW(), NOW(), 300000, 100000, 50);

INSERT INTO orders VALUES
    (1, 1, NOW(), 'Giao giờ hành chính', 1, 1, 500000, 500000);

INSERT INTO payments VALUES
    (1, 1, 'COD', 'Chua thanh toan');

INSERT INTO reviews VALUES
    ('RV01', 1, 1, 5, 'Rất tốt', '/review/r1.png', NOW(), 'active');

INSERT INTO bill VALUES
    (1, 1, NOW());

INSERT INTO history VALUES
    (1, 1, 1, NOW(), 'Hoàn thành', 500000);


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

-- thêm bảng cho trang giới thiệu (about) 27/12/2025
CREATE TABLE about (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       section VARCHAR(50),
                       title VARCHAR(255),
                       description TEXT,
                       image VARCHAR(255),
                       icon VARCHAR(100),
                       sort_order INT
);
-- thêm dữ liệu cho trang giới thiệu (about) 27/12/2025
INSERT INTO about (section, image, sort_order)
VALUES ('INFO_IMAGE', 'Assets/image/aboutUs_info.png', 1);

INSERT INTO about (section, title, description, sort_order) VALUES
('INFO','50+ CỬA HÀNG','Hệ thống cửa hàng của chúng tôi được phân bố khắp cả nước tại các thành phố như Hà Nội, TP. Hồ Chí Minh, Đà Nẵng, Huế...',1),
('INFO','200+ THƯƠNG HIỆU','Chúng tôi cung cấp sản phẩm đến từ nhiều thương hiệu nổi tiếng, uy tín và chất lượng được người dùng yêu thích.',2),
('INFO','3+ TRUNG TÂM TƯ VẤN','Chúng tôi có hơn 3 trung tâm hỗ trợ luôn sẵn sàng giải đáp mọi thắc mắc của khách hàng về sản phẩm.',3),
('INFO','5000+ KHÁCH HÀNG','Tính đến nay, cửa hàng của chúng tôi đã làm hài lòng hơn 5.000 khách hàng trong nước cũng như quốc tế.',4);

INSERT INTO about(section, description, icon, sort_order) VALUES
('SERVICE','Cửa hàng luôn sẵn sàng tư vấn và hỗ trợ mọi thắc mắc của bạn bất cứ lúc nào.','fa-headset',1),
('SERVICE','Chúng tôi có dịch vụ giao hàng tận nơi dành cho khách hàng không thể đến trực tiếp.','fa-truck-fast',2),
('SERVICE','Cửa hàng thường xuyên có nhiều chương trình khuyến mãi vào các dịp đặc biệt khi bạn mua sản phẩm.','fa-gift',3),
('SERVICE','Chúng tôi sẽ thông báo cho bạn khi có sản phẩm mới nếu bạn có nhu cầu.','fa-bell',4);

INSERT INTO about(section, title, description, image, sort_order) VALUES
('WHAT_WE_DO','Sản phẩm của chúng tôi','Cửa hàng có đa dạng các loại máy chơi game bạn có thể thoải mái lựa chọn theo sở thích.','Assets/image/aboutUs_product.png',1),
('WHAT_WE_DO','Đội ngũ của chúng tôi','Đội ngũ nhân viên luôn sẵn sàng hỗ trợ bạn bất cứ khi nào bạn cần.','Assets/image/aboutUs_team.png',2),
('WHAT_WE_DO','Cửa hàng của chúng tôi','Chúng tôi luôn sẵn lòng phục vụ bạn, hãy đến với cửa hàng khi bạn có nhu cầu.','Assets/image/aboutUs_store.png',3);

INSERT INTO about(section, description, title, sort_order) VALUES
('FINAL','Cửa hàng có nhiều loại máy chơi game để bạn dễ dàng chọn theo sở thích của mình.','Nhóm 17',1),
('FINAL','Đội ngũ luôn sẵn sàng hỗ trợ bạn bất cứ khi nào.','Nhóm 17',2),
('FINAL','Cửa hàng luôn vui vẻ phục vụ bạn, đừng ngần ngại ghé thăm khi có nhu cầu.','Nhóm 17',3);

-- Đã insert
INSERT INTO logo VALUES ('Logo Shop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaVtA9aH8iRQnDsQmBTt9yyB5mCIaYp8T0Qg&s');
INSERT INTO logo VALUES (null, 'Logo2 Shop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNhDsdA_PWXkUZ3ijwSU_9rpenL-Dsu_wuFQ&s');
INSERT INTO contact VALUES ('shop@gmail.com', '0123456789', 'Ho Chi Minh City');
INSERT INTO contact VALUES (null,'shop@gmail.com', '0987654321', 'Đại Học Nông Lâm');

INSERT INTO icon VALUES (1, 'fb', '<a href="#"><i class="fab fa-facebook-f"></i></a>', 1);
INSERT INTO icon VALUES (null, 'ytb', '<a href="#"><i class="fab fa-youtube"></i></a>', 1);
INSERT INTO icon VALUES (null, 'tiktok', '<a href="#"><i class="fab fa-tiktok"></i></a>', 1);
INSERT INTO icon VALUES (null, 'ins', '<a href="#"><i class="fab fa-instagram"></i></a>', 1);
INSERT INTO icon VALUES (null, 'zalo', '<a href="#"--%>
<%--                ><img--%>
<%--                        src="https://upload.wikimedia.org/wikipedia/commons/9/91/Icon_of_Zalo.svg"--%>
<%--                        alt="Zalo"--%>
<%--                        style="width: 22px; height: 22px"--%>
<%--                /></a>', 0);
INSERT INTO icon VALUES (null, 'x', '<a href="#"><i class="fab fa-twitter"></i></a>', 1);



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


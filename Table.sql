MariaDB [tugasbasisdata]> desc customers;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| customer_id | int(11)      | NO   | PRI | NULL    | auto_increment |
| name        | varchar(255) | NO   |     | NULL    |                |
| email       | varchar(255) | NO   | UNI | NULL    |                |
| phone       | varchar(20)  | YES  |     | NULL    |                |
| address     | text         | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
MariaDB [tugasbasisdata]> desc orders;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| order_id    | int(11)       | NO   | PRI | NULL    | auto_increment |
| customer_id | int(11)       | NO   | MUL | NULL    |                |
| product_id  | int(11)       | NO   | MUL | NULL    |                |
| order_date  | date          | NO   |     | NULL    |                |
| quantity    | int(11)       | NO   |     | NULL    |                |
| total_price | decimal(10,2) | NO   |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
MariaDB [tugasbasisdata]> desc products;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| product_id  | int(11)       | NO   | PRI | NULL    | auto_increment |
| name        | varchar(255)  | NO   |     | NULL    |                |
| description | text          | YES  |     | NULL    |                |
| price       | decimal(10,2) | NO   |     | NULL    |                |
| stock       | int(11)       | YES  |     | 0       |                |
| category    | varchar(100)  | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+

Table Customer
INSERT INTO customers (customer_id, name, email, phone, address) VALUES
(1, 'Andi Wijaya', 'andi@mail.com', '081234567890', 'Jl. Merdeka No. 10'),
(2, 'Siti Rahma', 'siti@mail.com', '081298765432', 'Jl. Mawar No. 5'),
(3, 'Budi Santoso', 'budi@mail.com', '081212345678', 'Jl. Melati No. 22'),
(4, 'Rina Kartika', 'rina@mail.com', '081223344556', 'Jl. Kenanga No. 8'),
(5, 'Dedi Pratama', 'dedi@mail.com', '081255566677', 'Jl. Anggrek No. 3'),
(6, 'Lina Marlina', 'lina@mail.com', '081234111222', 'Jl. Dahlia No. 7'),
(7, 'Fajar Nugroho', 'fajar@mail.com', '081299988877', 'Jl. Cemara No. 12'),
(8, 'Yuni Astuti', 'yuni@mail.com', '081233344455', 'Jl. Flamboyan No. 9'),
(9, 'Rizky Hidayat', 'rizky@mail.com', '081266677788', 'Jl. Teratai No. 4'),
(10, 'Nina Lestari', 'nina@mail.com', '081277788899', 'Jl. Sakura No. 6'),
(11, 'Galih Prasetyo', 'galih@mail.com', '081211122233', 'Jl. Cempaka No. 11'),
(12, 'Tari Ayu', 'tari@mail.com', '081244455566', 'Jl. Mawar No. 15'),
(13, 'Hendra Saputra', 'hendra@mail.com', '081233322211', 'Jl. Melur No. 2'),
(14, 'Dina Oktaviani', 'dina@mail.com', '081255544433', 'Jl. Kamboja No. 18'),
(15, 'Yoga Pratama', 'yoga@mail.com', '081299977766', 'Jl. Angsana No. 20');

Table Orders
INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity, total_price) VALUES
(1, 1, 2, '2025-11-01', 2, 170000.00),
(2, 2, 4, '2025-11-02', 1, 175000.00),
(3, 3, 1, '2025-11-03', 1, 120000.00),
(4, 4, 3, '2025-11-04', 2, 500000.00),
(5, 5, 5, '2025-11-05', 3, 180000.00),
(6, 6, 6, '2025-11-06', 1, 300000.00),
(7, 7, 7, '2025-11-07', 5, 75000.00),
(8, 8, 8, '2025-11-08', 10, 50000.00),
(9, 9, 9, '2025-11-09', 2, 80000.00),
(10, 10, 10, '2025-11-10', 3, 75000.00),
(11, 11, 11, '2025-11-11', 1, 150000.00),
(12, 12, 12, '2025-11-12', 1, 80000.00),
(13, 13, 13, '2025-11-13', 2, 140000.00),
(14, 14, 14, '2025-11-14', 1, 45000.00),
(15, 15, 15, '2025-11-15', 2, 40000.00);

Table Products
INSERT INTO products (product_id, name, description, price, stock, category) VALUES
(1, 'Buku Pemrograman', 'Belajar coding', 120000.00, 10, 'Buku'),
(2, 'Mouse Wireless', 'Mouse tanpa kabel', 85000.00, 25, 'Elektronik'),
(3, 'Headset Gaming', 'Suara jernih', 250000.00, 15, 'Elektronik'),
(4, 'Tas Ransel', 'Anti air', 175000.00, 20, 'Fashion'),
(5, 'Botol Minum', 'Stainless steel', 60000.00, 30, 'Peralatan'),
(6, 'Keyboard Mechanical', 'Tactile switch', 300000.00, 12, 'Elektronik'),
(7, 'Notebook A5', 'Isi 100 lembar', 15000.00, 50, 'Alat Tulis'),
(8, 'Pulpen Gel', 'Tinta hitam', 5000.00, 100, 'Alat Tulis'),
(9, 'Lampu LED', 'Hemat energi', 40000.00, 40, 'Elektronik'),
(10, 'Kabel Data', 'USB Type-C', 25000.00, 60, 'Aksesoris'),
(11, 'Power Bank', '10000mAh', 150000.00, 18, 'Elektronik'),
(12, 'Jam Dinding', 'Desain minimalis', 80000.00, 22, 'Dekorasi'),
(13, 'Kipas Meja', 'USB powered', 70000.00, 15, 'Elektronik'),
(14, 'Bantal Leher', 'Travel pillow', 45000.00, 35, 'Aksesoris'),
(15, 'Tempat Pensil', 'Motif kartun', 20000.00, 45, 'Alat Tulis');

Output Table Select
MariaDB [tugasbasisdata]> SELECT * FROM customers;
+-------------+----------------+-----------------+--------------+---------------------+
| customer_id | name           | email           | phone        | address             |
+-------------+----------------+-----------------+--------------+---------------------+
|           1 | Andi Wijaya    | andi@mail.com   | 081234567890 | Jl. Merdeka No. 10  |
|           2 | Siti Rahma     | siti@mail.com   | 081298765432 | Jl. Mawar No. 5     |
|           3 | Budi Santoso   | budi@mail.com   | 081212345678 | Jl. Melati No. 22   |
|           4 | Rina Kartika   | rina@mail.com   | 081223344556 | Jl. Kenanga No. 8   |
|           5 | Dedi Pratama   | dedi@mail.com   | 081255566677 | Jl. Anggrek No. 3   |
|           6 | Lina Marlina   | lina@mail.com   | 081234111222 | Jl. Dahlia No. 7    |
|           7 | Fajar Nugroho  | fajar@mail.com  | 081299988877 | Jl. Cemara No. 12   |
|           8 | Yuni Astuti    | yuni@mail.com   | 081233344455 | Jl. Flamboyan No. 9 |
|           9 | Rizky Hidayat  | rizky@mail.com  | 081266677788 | Jl. Teratai No. 4   |
|          10 | Nina Lestari   | nina@mail.com   | 081277788899 | Jl. Sakura No. 6    |
|          11 | Galih Prasetyo | galih@mail.com  | 081211122233 | Jl. Cempaka No. 11  |
|          12 | Tari Ayu       | tari@mail.com   | 081244455566 | Jl. Mawar No. 15    |
|          13 | Hendra Saputra | hendra@mail.com | 081233322211 | Jl. Melur No. 2     |
|          14 | Dina Oktaviani | dina@mail.com   | 081255544433 | Jl. Kamboja No. 18  |
|          15 | Yoga Pratama   | yoga@mail.com   | 081299977766 | Jl. Angsana No. 20  |
+-------------+----------------+-----------------+--------------+---------------------+
MariaDB [tugasbasisdata]> SELECT * FROM orders;
+----------+-------------+------------+------------+----------+-------------+
| order_id | customer_id | product_id | order_date | quantity | total_price |
+----------+-------------+------------+------------+----------+-------------+
|        1 |           1 |          2 | 2025-11-01 |        2 |   170000.00 |
|        2 |           2 |          4 | 2025-11-02 |        1 |   175000.00 |
|        3 |           3 |          1 | 2025-11-03 |        1 |   120000.00 |
|        4 |           4 |          3 | 2025-11-04 |        2 |   500000.00 |
|        5 |           5 |          5 | 2025-11-05 |        3 |   180000.00 |
|        6 |           6 |          6 | 2025-11-06 |        1 |   300000.00 |
|        7 |           7 |          7 | 2025-11-07 |        5 |    75000.00 |
|        8 |           8 |          8 | 2025-11-08 |       10 |    50000.00 |
|        9 |           9 |          9 | 2025-11-09 |        2 |    80000.00 |
|       10 |          10 |         10 | 2025-11-10 |        3 |    75000.00 |
|       11 |          11 |         11 | 2025-11-11 |        1 |   150000.00 |
|       12 |          12 |         12 | 2025-11-12 |        1 |    80000.00 |
|       13 |          13 |         13 | 2025-11-13 |        2 |   140000.00 |
|       14 |          14 |         14 | 2025-11-14 |        1 |    45000.00 |
|       15 |          15 |         15 | 2025-11-15 |        2 |    40000.00 |
+----------+-------------+------------+------------+----------+-------------+
MariaDB [tugasbasisdata]> SELECT * FROM products;
+------------+---------------------+-------------------+-----------+-------+------------+
| product_id | name                | description       | price     | stock | category   |
+------------+---------------------+-------------------+-----------+-------+------------+
|          1 | Buku Pemrograman    | Belajar coding    | 120000.00 |    10 | Buku       |
|          2 | Mouse Wireless      | Mouse tanpa kabel |  85000.00 |    25 | Elektronik |
|          3 | Headset Gaming      | Suara jernih      | 250000.00 |    15 | Elektronik |
|          4 | Tas Ransel          | Anti air          | 175000.00 |    20 | Fashion    |
|          5 | Botol Minum         | Stainless steel   |  60000.00 |    30 | Peralatan  |
|          6 | Keyboard Mechanical | Tactile switch    | 300000.00 |    12 | Elektronik |
|          7 | Notebook A5         | Isi 100 lembar    |  15000.00 |    50 | Alat Tulis |
|          8 | Pulpen Gel          | Tinta hitam       |   5000.00 |   100 | Alat Tulis |
|          9 | Lampu LED           | Hemat energi      |  40000.00 |    40 | Elektronik |
|         10 | Kabel Data          | USB Type-C        |  25000.00 |    60 | Aksesoris  |
|         11 | Power Bank          | 10000mAh          | 150000.00 |    18 | Elektronik |
|         12 | Jam Dinding         | Desain minimalis  |  80000.00 |    22 | Dekorasi   |
|         13 | Kipas Meja          | USB powered       |  70000.00 |    15 | Elektronik |
|         14 | Bantal Leher        | Travel pillow     |  45000.00 |    35 | Aksesoris  |
|         15 | Tempat Pensil       | Motif kartun      |  20000.00 |    45 | Alat Tulis |
+------------+---------------------+-------------------+-----------+-------+------------+

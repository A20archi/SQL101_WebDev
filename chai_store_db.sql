INSERT INTO chai_store (chai_name, price, chai_type, available) VALUES
('Masala Chai', 30.00, 'Spiced', TRUE),
('Green Chai', 25.00, 'Herbal', TRUE),
('Black Chai', 20.00, 'Classic', TRUE),
('Iced Chai', 35.00, 'Cold', FALSE),
('Oolong Chai', 40.00, 'Specialty', TRUE);

SELECT chai_name as "Chai Name",price as "Cost in INR" FROM chai_store

SELECT * from chai_store WHERE chai_name LIKE '%Chai%';

SELECT * FROM chai_store WHERE
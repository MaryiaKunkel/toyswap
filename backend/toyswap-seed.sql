INSERT INTO users (username, password, first_name, last_name, email, address)
VALUES ('john_doe', 
        'password123', 
        'John', 
        'Doe', 
        'john.doe@example.com', 
        '123 Main St'),
        ('jane_smith', 
        'password456', 
        'Jane', 
        'Smith', 
        'jane.smith@example.com', 
        '456 Elm St'),
        ('alice_johnson', 
        'password789', 
        'Alice', 
        'Johnson', 
        'alice.johnson@example.com', 
        '789 Oak St');

INSERT INTO listings (title, description, price, image_url, available, shared_by_username)
VALUES ('Toy Car', 'A small toy car', 
        10, 
        'http://example.com/toycar.jpg', 
        TRUE, 
        'john_doe'),
        ('Teddy Bear', 
        'A soft teddy bear', 
        15, 
        'http://example.com/teddybear.jpg', 
        TRUE, 
        'jane_smith'),
        ('Lego Set', 
        'A set of Lego bricks', 
        25, 
        'http://example.com/legoset.jpg', 
        TRUE, 
        'alice_johnson');



INSERT INTO liked_listings (listing_id,username) 
VALUES (1,'alice_johnson'),
        (2, 'john_doe');

INSERT INTO reviews (reviewer_username, reviewed_username, review_text, review_date) 
VALUES ('john_doe', 'jane_smith', 'Great seller!', '2023-01-01'),
        ('jane_smith', 'john_doe', 'Fast shipping!', '2023-01-02'),
        ('alice_johnson', 'john_doe', 'Item as described.', '2023-01-03');

INSERT INTO toy_exchanges (listing_id, shared_by_username, shared_to_username, exchange_date) 
VALUES (1, 'john_doe', 'jane_smith', '2023-01-10'),
        (2, 'jane_smith', 'alice_johnson', '2023-01-11'),
        (3, 'alice_johnson', 'john_doe', '2023-01-12');
INSERT INTO users (username, password, first_name, last_name, email)
VALUES ('john_doe', 
        'password123', 
        'John', 
        'Doe', 
        'john.doe@example.com'),
        ('jane_smith', 
        'password456', 
        'Jane', 
        'Smith', 
        'jane.smith@example.com'),
        ('alice_johnson', 
        'password789', 
        'Alice', 
        'Johnson', 
        'alice.johnson@example.com');

INSERT INTO address (state, city)
VALUES ('Wisconsin', 
        'Sussex'),
        ('Wisconsin', 
        'Milwaukee'),
        ('Wisconsin',
        'Waukesha');

INSERT INTO listing (title, description, price, image_url, available, shared_by_username, address_id)
VALUES ('Toy Car', 'A small toy car', 
        10, 
        'http://example.com/toycar.jpg', 
        TRUE, 
        'john_doe',
        1),
        ('Teddy Bear', 
        'A soft teddy bear', 
        15, 
        'http://example.com/teddybear.jpg', 
        TRUE, 
        'jane_smith',
        2),
        ('Lego Set', 
        'A set of Lego bricks', 
        25, 
        'http://example.com/legoset.jpg', 
        TRUE, 
        'alice_johnson',
        3);



INSERT INTO liked_listing (listing_id,username) 
VALUES (1,'alice_johnson'),
        (2, 'john_doe');

INSERT INTO toy_exchange (listing_id, shared_by_username, shared_to_username, exchange_date) 
VALUES (1, 'john_doe', 'jane_smith', '2023-01-10'),
        (2, 'jane_smith', 'alice_johnson', '2023-01-11'),
        (3, 'alice_johnson', 'john_doe', '2023-01-12');

INSERT INTO review (reviewer_username, toy_exchange_id, review_text, review_date) 
VALUES ('john_doe', 1, 'Great seller!', '2023-01-01'),
        ('jane_smith', 2, 'Fast shipping!', '2023-01-02'),
        ('alice_johnson', 3, 'Item as described.', '2023-01-03');


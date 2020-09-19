DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;
USE purrget;

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  categoryName VARCHAR(255) NOT NULL UNIQUE KEY
);

DROP TABLE IF EXISTS cats;
		
CREATE TABLE cats (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  catName VARCHAR(255) NOT NULL,
  categoryID INTEGER NOT NULL,
  INDEX categ_ind (categoryID),
  FOREIGN KEY (categoryID)
    REFERENCES categories(ID)
    ON DELETE CASCADE,
  UNIQUE KEY (catName)
);

DROP TABLE IF EXISTS reviews;
		
CREATE TABLE reviews (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cat_id INT(45) NOT NULL,
  review_title VARCHAR(255) NOT NULL,
  review_author VARCHAR(255) NULL DEFAULT "NEW_USER",
  review_rating INT(45) NOT NULL DEFAULT 0,
  review_value INT(45) DEFAULT NULL,
  review_taste INTEGER(45) DEFAULT NULL,
  review_quality INTEGER(45) DEFAULT NULL,
  review_content VARCHAR(255) NOT NULL,
  review_is_helpful INT(45) NULL,
  review_is_not_helpful INT NOT NULL DEFAULT 0,
  recommendation VARCHAR(255) DEFAULT NULL,
  review_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  INDEX cat_ind (cat_id),
    FOREIGN KEY (cat_id)
    REFERENCES cats(id)
    ON DELETE CASCADE,
    -- UNIQUE KEY (id)
);

-- ---
-- Foreign Keys 
-- ---

-- ALTER TABLE cats ADD FOREIGN KEY (id) REFERENCES reviews(cat_d);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `cats` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `reviews` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- CATEGORIES --

INSERT INTO categories (categoryName) VALUES ('Adorable');
INSERT INTO categories (categoryName) VALUES ('Floof');
INSERT INTO categories (categoryName) VALUES ('Chonk');
INSERT INTO categories (categoryName) VALUES ('Hairless');

-- CATS --

INSERT INTO cats (catName, categoryID) VALUES ('Gizmo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Kimono', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Tuxedo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Xito', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Covid', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Grumpy', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Midnyght', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sassy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Luna', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Ash', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Walnut', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sphynx', 4);


INSERT INTO cats (catName, categoryID) VALUES ('Oliver', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Bella', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Simba', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Chloe', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Max', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Lucy', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Lily', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Nala', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Sophie', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Milo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Rocky', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Coco', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Charlie', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Smokey', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Mia', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Jack', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Angel', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Tigger', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Oreo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Shadow', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Felix', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Willow', 1);


INSERT INTO cats (catName, categoryID) VALUES ('Romeo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Molly', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Tiger', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sammy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Casper', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Biscuit', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Bailey', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Gracie', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Loki', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sasha', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Simon', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Toby', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Ruby', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Cleo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Peanut', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Oscar', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Leo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Lucky', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Buddy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Daisy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Jasmine', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Callie', 2);


INSERT INTO cats (catName, categoryID) VALUES ('Pepper', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Leon', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Lola', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Kitty', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Patches', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Princess', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Missy', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Lulu', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Mittens', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sebastian', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Abby', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Orion', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Yuki', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Scout', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sadie', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Cupcake', 3);
INSERT INTO cats (catName, categoryID) VALUES ('George', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Butters', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Cuddles', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Boots', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Whiskers', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Mr. Snuffles', 3);


INSERT INTO cats (catName, categoryID) VALUES ('Sheba', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Daenerys', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Tiffany', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Stella', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Ella', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Gypsy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Alice', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Penny', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Cooper', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Harley', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Sam', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Garfield', 4);
INSERT INTO cats (catName, categoryID) VALUES ('NiuNiu', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Tucker', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Bandit', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Candy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Ziggy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Socks', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Rusty', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Batman', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Gatsby', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Raven', 4);

-- REVIEWS --

-- Reviews for 12 cats to show for the MVP --

INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(1, "This is a great cat. I can say I\'m happy with the choice I made.", 'user_name', 4, 4, 3, 5, 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(1, 'This is the most playful cat!!', 'user_name', 5, 5, 4, 4, 'They really like their toys and cat nip', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(1, 'I have never seen a cat shed so much ..', 'user_name', 3, 3, 4, 3, 'I had to get a furminator to be able to maintain the amount of hairballs all over my house. I also invested in a roomba, It was the purrrrfect idea', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(2,'I already lost this cat, she\'s so curious so she ran away', 'user_name', 1, 1, 1, 1, 'I should\'ve thought about getting this cat microchipped sooner', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(2,'At one point I wanted a cat, not anymore', 'user_name', 1, 1, 1, 1, 'I already had one cat and this cat waas very aggresive towards my first cat', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(3,'This is a special cat', 'user_name', 2, 2, 2 , 2 , 'This cat is lactose intolerant. I found out the hard way and had to replace most of my white chair covers. If you get this cat be sure to not give it milk. NO DAIRY!', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(3,'Cuddle bug', 'user_name', 4, 4, 5, 3, 'She really enjoys her naps with me in our sun room.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(3,'Curious George', 'user_name', 3, 3, 2 , 2 , "One day I couldn\'t find the cat because he wondered into my attic. After calling the cat for several hours I found him covered in dust bunnies. Make sure to not leave your attic door open for any reason.", 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(4, 'Pleasantly surprised with his coloring', 'user_name', 3, 4, 2 , 2 , "The photos of this cat online looked like he was going to be a darker gray. However, when i got him he was salt and pepper. Still cute, I\'m actually happier with his coloring in person", 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(4,'MY DREAM CAT', 'user_name', 5, 5, 5, 5, 'My children always wanted a pet. I was more of a dog person, however, this cat has the personality of a dog and loves to play fetch with the kids.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(4,"I\'m going to have to rehome him.", 'user_name', 1, 1, 1, 1, 'I was told this was a female cat, however, when i got home i realized it was in fact not a female and on top of that he had not been neutered', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(5,' VERY territorial', 'user_name', 3, 3, 4, 3, "This cat urinates all over my girlfriends clothes. I\'ve had to replace more clothes than I care to admit. Cute little guy though. Hope he grows out of it", 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(5,'Chatty Kathy', 'user_name', 2, 2, 4, 2, 'This cat is a little distracting. I got him at the begining of the pandemic and now that I work from home, my new office mate will not shut up', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(6,'Time to call the Fire Department', 'user_name', 3, 4, 2 , 2 , 'Little man got out of my house and ran up my neighbors tree. I could not coax him out which resulted in the sterotypical "cat got stuck in the tree".', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(6,'Classy cat', 'user_name', 5, 5, 5, 5, 'This cat will not eat regular dry cat food. He only accepts fancy feast on a gold plate.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(6,'This cat ROCKS', 'user_name', 4, 4, 5, 5, 'Was able to teach my cat how to fetch a beer from the fridge for me. ALl I have to say is BEER KITTY.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(7,'Potty training trouble', 'user_name', 2, 2, 3, 4, 'It took me five months to get this sucker litter box trained.', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(7,'Hide your cords!!', 'user_name', 3, 3, 4, 2, "I\'ve had to replace multiple extension cords in my home due to this little fellow.", 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(7,'Timid but sweet', 'user_name', 4, 4, 2, 2, 'This cat is very shy and often likes to hide. However, when he comes out he likes to be pet and hangout', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(8,'Get some nail clippers', 'user_name', 3, 3, 2, 4, 'This cat is very playful, but he tends to claw me and he makes me bleed. I have to cut his nails regularly.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a special cat', 'user_name', 2, 2, 2 , 2 , 'This cat is lactose intolerant. I found out the hard way and had to replace most of my white chair covers. If you get this cat be sure to not give it milk. NO DAIRY!', 2, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'Hide yo cords, hide yo cords, hide yo cords !!', 'user_name', 3, 3, 4, 2, "I\'ve had to replace multiple extension cords in my home due to this little fellow.", 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'NIGHT OWL', 'user_name', 2, 2, 2 , 2 , 'This cat rarely comes out during the day, but I noticed my bananas were being eaten during the night. I checked the security camera and night owl STRIKES AGAIN.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'Time to call the Fire Department', 'user_name', 3, 4, 2 , 2 , 'Little man got out of my house and ran up my neighbors tree. I could not coax him out which resulted in the sterotypical "cat got stuck in the tree".', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'Michael Phelps', 'user_name', 5, 5, 4, 5, "This cat loves going to the lake. I swear she\'s secretly training for a triathalon", 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'Kitty Genius', 'user_name', 4, 4, 3, 5, 'Built this cat an obstacle course that I thought would take him an hour to complete and he completed it in 12:36 much to my surprise. I guess I\ll have to make some adjustments to the course. ', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(10,'Unlikely friends', 'user_name', 4, 4, 3, 2, 'This cat has bonded with my micro pig. And they sleep in the cat bed together. Happy with this newfound friendship.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(10,'CURIOUSITY ALMOST KILLED THE CAT', 'user_name', 2, 2, 4, 4, 'Beware with candles and this cat. He might knock any candles over and light the curtains on fire. I hated those curtains anyway! I think the cat will stay', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(10,'cat or racoon', 'user_name', 3, 4, 2, 2, 'I love this cat for many reasons but the main reason is this cat has marking like a racoon.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(11,'Keep your china cabinet closed', 'user_name', 3, 3, 1, 2, 'My wife wants me to rehome this cat after it climbed into our china cabinet, knocking all of the antique dishes to the floor shattering them all.', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(11,'Favorite workout buddy', 'user_name', 4, 4, 2 , 2 , 'I like to go on runs and this cat likes to follow me around the neighborhood. It has become our morning routine and I really enjoy it. He was better endurance than I do.', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(11,'NIGHT OWL', 'user_name', 2, 2, 2 , 2 , 'This cat rarely comes out during the day, but I noticed my bananas were being eaten during the night. I checked the security camera and night owl STRIKES AGAIN.', 0, 0, "Would not recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(12,'insta famous', 'user_name', 4, 4, 3, 5, 'This cat loves her photo shoots. And I actually just booked his first TV gig with Disney channel. My kids are ectastic!!', 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(12,'Michael Phelps', 'user_name', 5, 5, 4, 5, "This cat loves going to the lake. I swear she\'s secretly training for a triathalon", 0, 0, "Would recommend");
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(12,'Kitty Genius', 'user_name', 4, 4, 3, 5, 'Built this cat an obstacle course that I thought would take him an hour to complete and he completed it in 12:36 much to my surprise. I guess I\ll have to make some adjustments to the course. ', 0, 0, "Would recommend");

INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
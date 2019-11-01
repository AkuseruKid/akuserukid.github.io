DROP DATABASE IF EXISTS blog_mvc;

CREATE DATABASE blog_mvc;

USE blog_mvc;

CREATE TABLE categories
(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL
);

CREATE TABLE articles
(
id INT PRIMARY KEY AUTO_INCREMENT,
categories_id INT NOT NULL,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
author VARCHAR(255) NOT NULL,
FOREIGN KEY (categories_id) REFERENCES  categories(id)
);

CREATE TABLE comments
(
id INT PRIMARY KEY AUTO_INCREMENT,
articles_id INT,
author VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
FOREIGN KEY (articles_id) REFERENCES articles(id)
);

INSERT INTO categories (name) VALUES ('Gastronomie');
INSERT INTO categories (name) VALUES ('Art');
INSERT INTO categories (name) VALUES ('Voyage');

INSERT INTO articles (categories_id, title, content, author) VALUES (1, 'Les sushis Japonais',  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mauris nibh, nec pulvinar lacus posuere et. Donec vulputate nunc sagittis purus consequat, sit amet iaculis mauris aliquet. Curabitur vitae tincidunt lectus, ac dignissim enim. Duis faucibus tellus efficitur consequat ultricies. Fusce vulputate mauris risus, sit amet sollicitudin lacus efficitur non. Morbi imperdiet felis eu eleifend scelerisque. Nunc sit amet aliquet nunc, vel semper ante. Donec vehicula a urna at posuere. Vivamus ex nisl, pretium id gravida id, consequat non nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper id massa sit amet tincidunt. Nam ut viverra sem. Sed sagittis iaculis diam. Mauris et ex sed sapien bibendum vehicula. Sed aliquam venenatis magna tempor iaculis. Proin consequat, mi nec dictum volutpat, neque velit dapibus neque, ut commodo dolor nisl ut nunc. Vivamus non lacinia nibh. Aliquam id nunc elit', 'Axel');
INSERT INTO articles (categories_id, title, content, author) VALUES (2, 'Le musée Guggenheim',  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mauris nibh, nec pulvinar lacus posuere et. Donec vulputate nunc sagittis purus consequat, sit amet iaculis mauris aliquet. Curabitur vitae tincidunt lectus, ac dignissim enim. Duis faucibus tellus efficitur consequat ultricies. Fusce vulputate mauris risus, sit amet sollicitudin lacus efficitur non. Morbi imperdiet felis eu eleifend scelerisque. Nunc sit amet aliquet nunc, vel semper ante. Donec vehicula a urna at posuere. Vivamus ex nisl, pretium id gravida id, consequat non nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper id massa sit amet tincidunt. Nam ut viverra sem. Sed sagittis iaculis diam. Mauris et ex sed sapien bibendum vehicula. Sed aliquam venenatis magna tempor iaculis. Proin consequat, mi nec dictum volutpat, neque velit dapibus neque, ut commodo dolor nisl ut nunc. Vivamus non lacinia nibh. Aliquam id nunc elit', 'Axel');
INSERT INTO articles (categories_id, title, content, author) VALUES (1, 'Mon escapade au Pérou',  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mauris nibh, nec pulvinar lacus posuere et. Donec vulputate nunc sagittis purus consequat, sit amet iaculis mauris aliquet. Curabitur vitae tincidunt lectus, ac dignissim enim. Duis faucibus tellus efficitur consequat ultricies. Fusce vulputate mauris risus, sit amet sollicitudin lacus efficitur non. Morbi imperdiet felis eu eleifend scelerisque. Nunc sit amet aliquet nunc, vel semper ante. Donec vehicula a urna at posuere. Vivamus ex nisl, pretium id gravida id, consequat non nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper id massa sit amet tincidunt. Nam ut viverra sem. Sed sagittis iaculis diam. Mauris et ex sed sapien bibendum vehicula. Sed aliquam venenatis magna tempor iaculis. Proin consequat, mi nec dictum volutpat, neque velit dapibus neque, ut commodo dolor nisl ut nunc. Vivamus non lacinia nibh. Aliquam id nunc elit', 'Axel');

INSERT INTO comments (articles_id, author, content) VALUES (1, 'Frerot88', 'Super article !');
INSERT INTO comments (articles_id, author, content) VALUES (2, 'John25', 'Bon article !');


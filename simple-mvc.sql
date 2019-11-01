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
precontent TEXT NOT NULL,
paragraph1 TEXT NOT NULL,
paragraph2 TEXT NOT NULL,
paragraph3 TEXT NOT NULL,
paragraph4 TEXT NOT NULL,
paragraph5 TEXT NOT NULL,
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

INSERT INTO categories (name) VALUES ('Food');
INSERT INTO categories (name) VALUES ('Art');
INSERT INTO categories (name) VALUES ('Travel');

INSERT INTO articles (categories_id, title, precontent, paragraph1, paragraph2, paragraph3, paragraph4, paragraph5) VALUES (1, 'According a funnily until pre-set or arrogant well cheerful', 'The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind',
                                                                                                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor leo nisl, at hendrerit tellus porttitor eu. Sed gravida lacinia urna, pulvinar mattis augue hendrerit in. Integer sagittis et magna ut posuere. Nulla interdum ipsum ex. Cras congue mi a tempor maximus. Vestibulum urna tellus, congue sed ornare id, luctus in ipsum. Phasellus euismod nibh sapien, condimentum fringilla dui pulvinar ut. Curabitur ut libero lobortis, egestas sem imperdiet, condimentum arcu. Vivamus vel odio bibendum, scelerisque dolor vel, congue quam. Donec rhoncus metus sed lorem viverra tempor. Integer eget efficitur dolor. Pellentesque sit amet dignissim tortor, vitae rhoncus metus. Morbi et nisl tempor, scelerisque ante et, mattis purus. Ut efficitur mauris et ullamcorper malesuada. Aenean at tristique ex, vitae scelerisque justo.',
                                                                                                                            'Praesent id urna ut lacus euismod congue vel nec mi. Integer ut odio iaculis, molestie erat vestibulum, ullamcorper dui. Sed pretium massa est, sit amet euismod turpis sollicitudin a. Fusce id felis et sem imperdiet gravida vel a ligula. Nunc euismod massa dui, sed posuere mauris ornare ac. Duis ut massa elit. Aenean blandit elit turpis, vitae lobortis augue fermentum et. Sed scelerisque in tortor quis iaculis. Proin pulvinar sapien ligula, at ullamcorper ligula dignissim nec. Aenean hendrerit lorem nec hendrerit fringilla. Aliquam vehicula pretium sem vehicula pretium. Cras tristique lorem mattis lectus maximus, ac euismod ligula laoreet. Aliquam nulla nibh, malesuada sed felis ut, bibendum dignissim ex.',
                                                                                                                            'Vestibulum interdum orci a sodales rutrum. Suspendisse in lobortis diam. Aenean et lobortis eros. Vestibulum faucibus tortor magna, a vestibulum dolor condimentum lobortis. Donec dictum nisi justo, quis feugiat turpis faucibus et. Etiam ornare accumsan risus vitae tincidunt. Integer tempor cursus tincidunt.',
                                                                                                                            'Aenean nec dapibus elit. Praesent non luctus sem. Nulla volutpat nec lorem eget pulvinar. Nulla molestie maximus nisi non volutpat. Fusce non ex eu elit volutpat aliquet. Suspendisse quis rutrum tellus, eu semper dui. In tincidunt eros sapien, in iaculis ante accumsan nec. Duis id convallis diam. Nam vehicula a risus consectetur accumsan. Praesent maximus efficitur purus vel venenatis. Duis porta nec nisi non gravida. Cras justo dolor, ornare eu arcu eget, gravida eleifend sapien. Quisque posuere mattis lorem sed ullamcorper. Fusce consequat neque ac nunc varius, nec aliquet enim molestie. Aliquam eget sodales felis.',
                                                                                                                            'Aliquam scelerisque lectus vel nunc egestas ullamcorper. Quisque viverra, odio vel scelerisque euismod, nibh mauris scelerisque nisi, vel aliquet nulla ipsum commodo nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas elementum porta sapien, a elementum quam efficitur mattis. Aenean egestas mauris at nisi pretium auctor. Nulla et tincidunt nisi, eu pulvinar ante. Praesent id scelerisque lorem. Integer blandit diam eget cursus pellentesque. Praesent in sem laoreet dui rhoncus volutpat. Donec eu eleifend magna, nec cursus arcu. Aenean pretium nunc maximus interdum bibendum. Sed faucibus molestie commodo. Maecenas finibus laoreet lectus sed elementum. Sed suscipit commodo magna, non ultricies justo efficitur at.'
                                                                                                                            );
INSERT INTO articles (categories_id, title, precontent, paragraph1, paragraph2, paragraph3, paragraph4, paragraph5) VALUES (2, 'Coffee sugar, chicory seasonal espresso barista americano',  'Single shot cultivar beans as chicory caffeine. Medium brewed, milk extra that froth pumpkin spice mocha. Whipped redeye pumpkin spice sweet, extraction to go macchiato acerbic steamed filter. Robusta grounds decaffeinated',
                                                                                                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor leo nisl, at hendrerit tellus porttitor eu. Sed gravida lacinia urna, pulvinar mattis augue hendrerit in. Integer sagittis et magna ut posuere. Nulla interdum ipsum ex. Cras congue mi a tempor maximus. Vestibulum urna tellus, congue sed ornare id, luctus in ipsum. Phasellus euismod nibh sapien, condimentum fringilla dui pulvinar ut. Curabitur ut libero lobortis, egestas sem imperdiet, condimentum arcu. Vivamus vel odio bibendum, scelerisque dolor vel, congue quam. Donec rhoncus metus sed lorem viverra tempor. Integer eget efficitur dolor. Pellentesque sit amet dignissim tortor, vitae rhoncus metus. Morbi et nisl tempor, scelerisque ante et, mattis purus. Ut efficitur mauris et ullamcorper malesuada. Aenean at tristique ex, vitae scelerisque justo.',
                                                                                                                            'Praesent id urna ut lacus euismod congue vel nec mi. Integer ut odio iaculis, molestie erat vestibulum, ullamcorper dui. Sed pretium massa est, sit amet euismod turpis sollicitudin a. Fusce id felis et sem imperdiet gravida vel a ligula. Nunc euismod massa dui, sed posuere mauris ornare ac. Duis ut massa elit. Aenean blandit elit turpis, vitae lobortis augue fermentum et. Sed scelerisque in tortor quis iaculis. Proin pulvinar sapien ligula, at ullamcorper ligula dignissim nec. Aenean hendrerit lorem nec hendrerit fringilla. Aliquam vehicula pretium sem vehicula pretium. Cras tristique lorem mattis lectus maximus, ac euismod ligula laoreet. Aliquam nulla nibh, malesuada sed felis ut, bibendum dignissim ex.',
                                                                                                                            'Vestibulum interdum orci a sodales rutrum. Suspendisse in lobortis diam. Aenean et lobortis eros. Vestibulum faucibus tortor magna, a vestibulum dolor condimentum lobortis. Donec dictum nisi justo, quis feugiat turpis faucibus et. Etiam ornare accumsan risus vitae tincidunt. Integer tempor cursus tincidunt.',
                                                                                                                            'Aenean nec dapibus elit. Praesent non luctus sem. Nulla volutpat nec lorem eget pulvinar. Nulla molestie maximus nisi non volutpat. Fusce non ex eu elit volutpat aliquet. Suspendisse quis rutrum tellus, eu semper dui. In tincidunt eros sapien, in iaculis ante accumsan nec. Duis id convallis diam. Nam vehicula a risus consectetur accumsan. Praesent maximus efficitur purus vel venenatis. Duis porta nec nisi non gravida. Cras justo dolor, ornare eu arcu eget, gravida eleifend sapien. Quisque posuere mattis lorem sed ullamcorper. Fusce consequat neque ac nunc varius, nec aliquet enim molestie. Aliquam eget sodales felis.',
                                                                                                                            'Aliquam scelerisque lectus vel nunc egestas ullamcorper. Quisque viverra, odio vel scelerisque euismod, nibh mauris scelerisque nisi, vel aliquet nulla ipsum commodo nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas elementum porta sapien, a elementum quam efficitur mattis. Aenean egestas mauris at nisi pretium auctor. Nulla et tincidunt nisi, eu pulvinar ante. Praesent id scelerisque lorem. Integer blandit diam eget cursus pellentesque. Praesent in sem laoreet dui rhoncus volutpat. Donec eu eleifend magna, nec cursus arcu. Aenean pretium nunc maximus interdum bibendum. Sed faucibus molestie commodo. Maecenas finibus laoreet lectus sed elementum. Sed suscipit commodo magna, non ultricies justo efficitur at.'
                                                                                                                           );
INSERT INTO articles (categories_id, title, precontent, paragraph1, paragraph2, paragraph3, paragraph4, paragraph5) VALUES (3, 'Overlaid the jeepers uselessly much excluding', 'Arista, percolator, cream, aromatic, fair trade, breve body instant lungo blue mountain cappuccino. Americano aroma mug espresso latte crema milk redeye acerbic. Galão robusta instant, decaffeinated, so fair trade wings.',
                                                                                                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor leo nisl, at hendrerit tellus porttitor eu. Sed gravida lacinia urna, pulvinar mattis augue hendrerit in. Integer sagittis et magna ut posuere. Nulla interdum ipsum ex. Cras congue mi a tempor maximus. Vestibulum urna tellus, congue sed ornare id, luctus in ipsum. Phasellus euismod nibh sapien, condimentum fringilla dui pulvinar ut. Curabitur ut libero lobortis, egestas sem imperdiet, condimentum arcu. Vivamus vel odio bibendum, scelerisque dolor vel, congue quam. Donec rhoncus metus sed lorem viverra tempor. Integer eget efficitur dolor. Pellentesque sit amet dignissim tortor, vitae rhoncus metus. Morbi et nisl tempor, scelerisque ante et, mattis purus. Ut efficitur mauris et ullamcorper malesuada. Aenean at tristique ex, vitae scelerisque justo.',
                                                                                                                            'Praesent id urna ut lacus euismod congue vel nec mi. Integer ut odio iaculis, molestie erat vestibulum, ullamcorper dui. Sed pretium massa est, sit amet euismod turpis sollicitudin a. Fusce id felis et sem imperdiet gravida vel a ligula. Nunc euismod massa dui, sed posuere mauris ornare ac. Duis ut massa elit. Aenean blandit elit turpis, vitae lobortis augue fermentum et. Sed scelerisque in tortor quis iaculis. Proin pulvinar sapien ligula, at ullamcorper ligula dignissim nec. Aenean hendrerit lorem nec hendrerit fringilla. Aliquam vehicula pretium sem vehicula pretium. Cras tristique lorem mattis lectus maximus, ac euismod ligula laoreet. Aliquam nulla nibh, malesuada sed felis ut, bibendum dignissim ex.',
                                                                                                                            'Vestibulum interdum orci a sodales rutrum. Suspendisse in lobortis diam. Aenean et lobortis eros. Vestibulum faucibus tortor magna, a vestibulum dolor condimentum lobortis. Donec dictum nisi justo, quis feugiat turpis faucibus et. Etiam ornare accumsan risus vitae tincidunt. Integer tempor cursus tincidunt.',
                                                                                                                            'Aenean nec dapibus elit. Praesent non luctus sem. Nulla volutpat nec lorem eget pulvinar. Nulla molestie maximus nisi non volutpat. Fusce non ex eu elit volutpat aliquet. Suspendisse quis rutrum tellus, eu semper dui. In tincidunt eros sapien, in iaculis ante accumsan nec. Duis id convallis diam. Nam vehicula a risus consectetur accumsan. Praesent maximus efficitur purus vel venenatis. Duis porta nec nisi non gravida. Cras justo dolor, ornare eu arcu eget, gravida eleifend sapien. Quisque posuere mattis lorem sed ullamcorper. Fusce consequat neque ac nunc varius, nec aliquet enim molestie. Aliquam eget sodales felis.',
                                                                                                                            'Aliquam scelerisque lectus vel nunc egestas ullamcorper. Quisque viverra, odio vel scelerisque euismod, nibh mauris scelerisque nisi, vel aliquet nulla ipsum commodo nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas elementum porta sapien, a elementum quam efficitur mattis. Aenean egestas mauris at nisi pretium auctor. Nulla et tincidunt nisi, eu pulvinar ante. Praesent id scelerisque lorem. Integer blandit diam eget cursus pellentesque. Praesent in sem laoreet dui rhoncus volutpat. Donec eu eleifend magna, nec cursus arcu. Aenean pretium nunc maximus interdum bibendum. Sed faucibus molestie commodo. Maecenas finibus laoreet lectus sed elementum. Sed suscipit commodo magna, non ultricies justo efficitur at.'
                                                                                                                           );

INSERT INTO comments (articles_id, author, content) VALUES (1, 'Frerot88', 'Super article !');
INSERT INTO comments (articles_id, author, content) VALUES (2, 'John25', 'Bon article !');


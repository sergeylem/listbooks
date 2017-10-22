USE test;
DROP TABLE IF EXISTS book; 
CREATE TABLE `test`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `author` VARCHAR(100) NOT NULL,
  `isbn` VARCHAR(20) NOT NULL,
  `printYear` INT NOT NULL,
  `readAlready` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('White Fang', 'Advanture', 'Jack London', '12345', '1906', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' Harry Potter', 'Fantasy', 'Rowling J.K.', '23456', '1997', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' Return to the Stars', 'Space opera', 'Hamilton E.', '34567', '1969', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' The Chronicles of Amber', 'Fantasy', 'Roger Zelazny', '10001', '1970', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' The Godfather', 'Drama', 'Mario Puiso', '10002', '1969', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' The Sea-wolf', 'Adventure', 'Jack London', '10003', '1904', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('How to win friends', 'Classic', 'Dale Carnegie', '10004', '1936', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES (' The Adventure of the Dancing Men', 'Detective', 'Arthur Conan Doyle', '10004', '1903', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 1', 'Description 1', 'Author 1', 'ISBN 1', '1950', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 2', 'Description 2', 'Author 2', 'ISBN 2', '1960', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 3', 'Description 3', 'Author 3', 'ISBN 3', '1970', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 4', 'Description 4', 'Author 4', 'ISBN 4', '1980', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 5', 'Description 5', 'Author 5', 'ISBN 5', '1985', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 6', 'Description 6', 'Author 6', 'ISBN 6', '1986', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 7', 'Description 7', 'Author 7', 'ISBN 7', '1987', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 8', 'Description 8', 'Author 8', 'ISBN 8', '1988', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 9', 'Description 9', 'Author 9', 'ISBN 9', '1989', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 10', 'Description 10', 'Author 10', 'ISBN 10', '1990', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 11', 'Description 11', 'Author 11', 'ISBN 11', '1991', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 12', 'Description 12', 'Author 12', 'ISBN 12', '1992', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 13', 'Description 13', 'Author 13', 'ISBN 13', '1993', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 14', 'Description 14', 'Author 14', 'ISBN 14', '1994', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 15', 'Description 15', 'Author 15', 'ISBN 15', '1995', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 16', 'Description 16', 'Author 16', 'ISBN 16', '1996', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 17', 'Description 17', 'Author 17', 'ISBN 17', '1997', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 18', 'Description 18', 'Author 18', 'ISBN 18', '1998', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 19', 'Description 19', 'Author 19', 'ISBN 19', '1999', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 20', 'Description 20', 'Author 20', 'ISBN 20', '2000', '1');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 21', 'Description 21', 'Author 21', 'ISBN 21', '2001', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 22', 'Description 22', 'Author 22', 'ISBN 22', '2002', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 23', 'Description 23', 'Author 23', 'ISBN 23', '2003', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 24', 'Description 24', 'Author 24', 'ISBN 24', '2004', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 25', 'Description 25', 'Author 25', 'ISBN 25', '2005', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 26', 'Description 26', 'Author 26', 'ISBN 26', '2006', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 27', 'Description 27', 'Author 27', 'ISBN 27', '2007', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 28', 'Description 28', 'Author 28', 'ISBN 28', '2008', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 29', 'Description 29', 'Author 29', 'ISBN 29', '2009', '0');
INSERT INTO test.book (title, description, author, isbn, printYear, readAlready) VALUES ('Title 30', 'Description 30', 'Author 30', 'ISBN 30', '2010', '0');

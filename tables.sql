CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phoneno VARCHAR(15)
);
CREATE TABLE profile (
    id INT PRIMARY KEY,
    bio TEXT,
    contact VARCHAR(50),
    username VARCHAR(50),
    picture LONGTEXT,
    FOREIGN KEY (id) REFERENCES users(id) ON DELETE CASCADE
);
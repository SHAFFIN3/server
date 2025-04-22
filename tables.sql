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
CREATE TABLE posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    picture LONGTEXT,
    likes INT,
    caption TEXT,
    id INT,
    FOREIGN KEY (id) REFERENCES users(id) ON DELETE CASCADE
);
CREATE TABLE comments (
    post_id INT,
    comment_text TEXT,
    FOREIGN KEY (post_id) REFERENCES users(id) ON DELETE CASCADE
);
CREATE TABLE stories (
    story_id INT AUTO_INCREMENT PRIMARY KEY,
    picture LONGTEXT,
    id INT,
    FOREIGN KEY (id) REFERENCES users(id) ON DELETE CASCADE
);

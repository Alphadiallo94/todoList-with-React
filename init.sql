DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS users;

create table users(
    userId  VARCHAR(255) PRIMARY KEY NOT NULL,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    twitter VARCHAR(255)
);

create table projects(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    userId  VARCHAR(255)  NOT NULL,
    name  VARCHAR(255)  NOT NULL,
    projectId VARCHAR(255),
    FOREIGN KEY (userId) REFERENCES users(userId) ON DELETE CASCADE
    );

create table tasks(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    userId  VARCHAR(255) NOT NULL,
    archived  BOOLEAN,
    projectId VARCHAR(255),
    date  VARCHAR(50) NOT NULL,
    task  VARCHAR(255) NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(userId) ON DELETE CASCADE
);



INSERT INTO users(userId,firstName ,lastName ,twitter )values
            ("userid1","Alpha","DIALLO","twitter User1"),
            ("userid2","Beta","DIALLO","twitter User2"),
            ("userid3","Gamma","DIALLO","twitter User3");


INSERT INTO projects(userId,name ,projectId )values
            ("userid1","Film","projectId1"),
            ("userid2","Musique","projectId2"),
            ("userid3","Lecture","projectId3");

INSERT INTO tasks(userId,archived ,projectId,date,task )values
            ("userid1",true,"projectId1","30/01/2022","Tintin"),
            ("userid1",true,"projectId1","05/02/2022","Tintin Au tibet"),
            ("userid1",true,"projectId1","30/02/2022","Robin des bois"),

            ("userid1",false,"projectId2","30/01/2022","Ninho"),
            ("userid1",false,"projectId2","30/02/2022","EMINEM"),
            ("userid1",false,"projectId2","05/02/2022","2 pac"),

            ("userid1",false,"projectId3","05/02/2022","Back to life"),
            ("userid1",true,"projectId3","05/02/2022","Coming to America"),
            ("userid1",true,"projectId3","05/02/2022","Becoming");


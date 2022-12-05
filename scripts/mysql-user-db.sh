#!/bin/bash

DBNAME=usermanagement_tut

echo "mysql root password:"
read -sp rootpass

mysql -uroot -p$rootpass <<EOF

CREATE USER $1@localhost IDENTIFIED WITH mysql_native_password BY '$2';

GRANT ALL PRIVILEGES ON *.* TO \`${1}\`@'localhost' WITH GRANT OPTION;

CREATE DATABASE $DBNAME;

USE $DBNAME;

CREATE TABLE \`$DBNAME\`.\`user\` ( \`id\` INT NOT NULL AUTO_INCREMENT , \`first_name\` VARCHAR(45) NOT NULL , \`last_name\` VARCHAR(45) NOT NULL , \`email\` VARCHAR(45) NOT NULL , \`phone\` VARCHAR(45) NOT NULL , \`comments\` TEXT NOT NULL , \`status\` VARCHAR(10) NOT NULL DEFAULT 'active' , PRIMARY KEY (\`id\`)) ENGINE = InnoDB;

INSERT INTO \`user\` (\`id\`, \`first_name\`, \`last_name\`, \`email\`, \`phone\`, \`comments\`, \`status\`) VALUES (NULL, 'Bruce', 'Wayne', 'batman@gmail.com', '9898989898', '', 'active'), (NULL, 'Clark', 'Kent', 'superman@gmail.com', '9009009000', '', 'active');

EOF

echo ""
echo "User '$1' created..."
sleep 1
echo "Database '$DBNAME' created..."
sleep 1
echo "Table 'user' created..."
sleep 1
echo "Dummy data inserted..."

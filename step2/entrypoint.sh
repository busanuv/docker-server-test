service mysql start
mysql -u root <<<"CREATE DATABASE IF NOT EXISTS $RDS_DB_NAME ;"
mysql -u root <<<"CREATE USER IF NOT EXISTS $RDS_USERNAME IDENTIFIED BY '$RDS_PASSWORD' ;"
mysql -u root <<<"GRANT ALL PRIVILEGES ON $RDS_DB_NAME.* TO $RDS_USERNAME ;"
mysql -u root $RDS_DB_NAME < init.sql

git clone https://github.com/busanuv/blog-last.git
cd blog-last
chmod +x gradlew
./gradlew build
java -jar -Dspring.profiles.active=docker build/libs/*.jar
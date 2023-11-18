-- 외부접속용
create user 'ssar'@'%' identified by 'ssar1234';
GRANT ALL PRIVILEGES ON *.* TO 'ssar'@'%';

-- 로컬용
create user 'ssar'@'localhost' identified by 'ssar1234';
GRANT ALL PRIVILEGES ON *.* TO 'ssar'@'localhost';

create database blog;
FLUSH PRIVILEGES;
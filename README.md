# Docker test

- step1
    - 도커 ubuntu 컨테이너에 jdk 설치하고 프로젝트 clone 받아서 build 후 실행(H2DB)
    - step1 dir에서 `docker build -t step1 . && docker run -p 8080:8080 -it step1`
- step2
    - 도커 ubuntu 컨테이너에 jdk, mysql 설치하고 프로젝트 clone 받아서 build 후 실행
    - step2 dir에서 `docker build -t step2 . && docker run -p 8080:8080 -p 3306:3306 -it step2`
- step3
    - 도커 컴포즈로 mysql 붙이기
    - step3 dir에서 `docker-compose up`
        - 맥에서 아래와 같은 로그가 보인다면 `개인정보 보호 및 보안 -> 전체 디스크 접근 권한 -> 도커 추가`
        - docker compose 에서는 init.sql을 복사하는게 아니라 로컬의 볼륨을 마운트 해서 사용하기때문
        - 복사해서 사용하고 싶으면 Dockerfile 작성해야함
        ```sh
        /entrypoint.sh: line 171: /docker-entrypoint-initdb.d/init.sql: Operation not permitted
        ```

    
## Here String Operator

이 연산자는 문자열을 명령어에 직접 입력하는 데 사용됩니다. 예시에서는 mysql 명령어와 함께 사용되어 셸에서 직접 SQL 명령을 제공합니다.

```shell
mysql -u root <<< "CREATE DATABASE IF NOT EXISTS $RDS_DB_NAME ;"
```


## Here Document

Here Document는 여러 줄의 텍스트를 명령어에 전달하는 데 사용됩니다. 다음은 여러 줄의 텍스트를 mysql 명령에 전달하는 예시입니다.

```shell
mysql -u root << EOF
CREATE DATABASE IF NOT EXISTS $RDS_DB_NAME ;
CREATE USER IF NOT EXISTS $RDS_USERNAME IDENTIFIED BY '$RDS_PASSWORD' ;
GRANT ALL PRIVILEGES ON $RDS_DB_NAME.* TO $RDS_USERNAME ;
EOF
```

```txt
EOF는 Here Document라고 불리는 구문으로, 셸 스크립트에서 여러 줄의 텍스트를 입력 또는 명령에 전달할 때 사용됩니다. EOF는 End of File의 약자로, 
여기서는 특별한 종료 문자열로 사용됩니다. 여러 줄의 텍스트 블록을 << EOF와 EOF 사이에 위치시킴으로써 해당 블록의 내용을 명령어에 전달할 수 있습니다.
```

## Input Redirection

이 연산자는 파일에서 입력을 읽어와 명령어에 전달하는 데 사용됩니다. 예시에서는 init.sql 파일의 내용을 mysql 명령으로 전달합니다.

```shell
mysql -u root $RDS_DB_NAME < init.sql
```
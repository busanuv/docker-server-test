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


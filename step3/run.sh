docker build -t step3-db ./db && docker run -p 8080:8080 -p 3306:3306 -it step3-db
docker build -t step3-backend ./backend && docker run -p 8080:8080 -p 3306:3306 -it step3-backend
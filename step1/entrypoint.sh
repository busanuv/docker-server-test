git clone https://github.com/busanuv/blog-last.git
cd blog-last
chmod +x gradlew
./gradlew build
java -jar -Dspring.profiles.active=dev build/libs/*.jar
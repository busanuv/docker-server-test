git clone https://github.com/busanuv/blog-last.git
cd blog-last
chmod +x gradlew
./gradlew build
chmod +x build/libs/*.jar
java -jar -Dspring.profiles.active=docker build/libs/*.jar
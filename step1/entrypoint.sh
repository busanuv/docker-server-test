# git clone https://github.com/busanuv/blog-user-step15.git
git clone https://github.com/111coding/blog-user-step15.git
cd blog-user-step15
chmod +x gradlew
./gradlew build
chmod +x build/libs/*.jar
java -jar -Dspring.profiles.active=dev build/libs/*.jar
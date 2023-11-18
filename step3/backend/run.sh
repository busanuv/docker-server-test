git clone https://github.com/busanuv/blog-user-step14.git
cd blog-user-step14
chmod +x gradlew
./gradlew build
# java -jar $(echo $(ls build/libs| grep 'SNAPSHOT.jar'))
java -jar $(echo build/libs/*.jar)
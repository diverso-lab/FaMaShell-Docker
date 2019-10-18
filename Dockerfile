FROM openjdk:8
RUN curl -L https://github.com/FaMaFW/FaMA/releases/download/v1.4.b/FaMa-1.4.beta.zip > fama.zip
RUN mkdir /usr/src/fama
RUN unzip fama.zip -d /usr/src/fama
COPY ./FaMaConfig.xml /usr/src/fama/FaMa-1.4.beta/
WORKDIR /usr/src/fama/FaMa-1.4.beta/
#RUN javac Main.java
CMD ["java", "-jar", "lib/FaMaSDK-1.1.1.jar"]

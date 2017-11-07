FROM openjdk:9-slim
# openjdk:9 image has an issue
# https://github.com/docker-library/openjdk/issues/145

RUN apt-get update && apt-get install -y --no-install-recommends \
        wget \
        && \
    rm -rf /var/lib/apt/lists/*

ENV REVISION=5.0.1

RUN set -xe; \
    cd /usr/src; \
    wget -q https://github.com/junit-team/junit5/archive/r${REVISION}.zip; \
    unzip -q r${REVISION}.zip;

WORKDIR /usr/src/junit5-r${REVISION}

# need gradle 4.3 for Java 9.0.1
# exclude original stylesheet.css
RUN set -xe; \
    sed -i 's/4.1/4.3/' gradle/wrapper/gradle-wrapper.properties; \
    sed -i 's|options.stylesheetFile|//options.stylesheetFile|' build.gradle; \
    ./gradlew aggregateJavadocs;

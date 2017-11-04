FROM openjdk:9

RUN apt-get update && apt-get install -y --no-install-recommends \
        openjdk-8-source \
        && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/lib/jvm/openjdk-8

RUN set -xe; \
    unzip -q -d src src.zip; \
    mkdir docs; \
    find src \( -path "src/org/*" -o -path "src/java/*" -o -path "src/javax/*" \) -name "*.java" > sources.ls; \
    javadoc -d docs -sourcepath src --release 8 -quiet -J-Xmx1G @sources.ls;

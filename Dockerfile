FROM anapsix/alpine-java:jre8
MAINTAINER Tri Bui

COPY osiam-3.0.war /usr/bin/osiam
COPY osiam.yaml /var/lib/osiam/config/
RUN chmod +x /usr/bin/osiam

EXPOSE 8080
ENV OSIAM_HOME=/var/lib/osiam
CMD ["java", "-jar", "/usr/bin/osiam"]
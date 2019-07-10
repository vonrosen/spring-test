#!/bin/bash

/app/src/main/shell/check_postgres_seeded.sh
java -Dspring.profiles.active=docker -jar target/springboot-0.0.1-SNAPSHOT.jar
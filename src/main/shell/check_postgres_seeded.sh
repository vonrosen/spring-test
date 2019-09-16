#!/bin/bash

host=localhost
port=5432
user=postgres

#check postgres is up
tries=0
retries=20
wait=10

while [ true ]
do
  psql -h ${host} -U postgres -c "select * from users;" users |fgrep hunter >/dev/null

  if [ "$?" -eq 0 ]; then
    exit 0
  fi

  if [ "$tries" -ge "$retries" ]; then
    break
  fi

  echo "Could not verify postgres data has been seeded. Will retry $((retries-tries)) times after waiting $wait seconds"
  sleep "$wait"
  tries=$((tries+1))
done

echo "Could not verify postgres data has been seeded after trying $tries times"
exit 1
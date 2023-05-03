#!/usr/bin/env bash

for service in plan pick
do
  for file in ${service}_system.puml ${service}_components.puml ${service}_relations.puml
  do
    url="https://raw.githubusercontent.com/anatolikea/${service}-backend/master/resources/diagrams/${file}"
    echo "$url"
    curl -s --fail "$url" --output "./diagrams/$file" || echo "$file not found"
  done
done

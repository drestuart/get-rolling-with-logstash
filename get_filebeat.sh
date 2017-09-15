#!/bin/bash

# Mac
if [ "$(uname)" == "Darwin" ]; then
	curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.0.2-darwin-x86_64.tar.gz
	tar xzvf filebeat-5.0.2-darwin-x86_64.tar.gz
	mv filebeat-5.0.2-darwin-x86_64 filebeat
	rm filebeat-5.0.2-darwin-x86_64.tar.gz
# Linux
else
	curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.0.2-linux-x86.tar.gz
	tar xzvf filebeat-5.0.2-linux-x86.tar.gz
	mv filebeat-5.0.2-linux-x86 filebeat
	rm filebeat-5.0.2-linux-x86.tar.gz
fi

cp filebeat.yml filebeat/
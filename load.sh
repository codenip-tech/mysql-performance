#!/usr/bin/env bash
set -e

cat video-$1/sql/* | docker-compose exec -T mysql mysql -uroot -proot imdb

if [[ -n $2 ]]; then
  file_name=$2.tsv.gz
  curl https://datasets.imdbws.com/$file_name > $file_name
  gzip -d $file_name
  mv $2.tsv mysql/dumps/
  docker-compose exec mysql mysql -uroot -proot --local-infile imdb -e "LOAD DATA LOCAL INFILE '/dumps/$2.tsv'  INTO TABLE name_basic  FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n'"
  rm -f msqyl/dumps/*
fi

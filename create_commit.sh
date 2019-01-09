#!/usr/bin/env bash

set -e

AIRFLOW_COMMIT=$1

# Airflow itself
docker build --build-arg AIRFLOW_COMMIT=$AIRFLOW_COMMIT -t ffinfo/airflow:$AIRFLOW_COMMIT .
docker push ffinfo/airflow:$AIRFLOW_COMMIT

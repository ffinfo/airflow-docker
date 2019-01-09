This docker file will build a specific commit of apache airflow given as a build argument.

### Building

```bash
AIRFLOW_COMMIT=97c761ddabcee08deb1f774f637a1bafe22a3de6
docker build --build-arg AIRFLOW_COMMIT=$AIRFLOW_COMMIT -t ffinfo/airflow:$AIRFLOW_COMMIT airflow
docker push ffinfo/airflow:$AIRFLOW_COMMIT
```

## Running

A consistent airflow home can be mounted on `/home/airflow/airflow`

```bash
docker run -e AIRFLOW_CMD=webserver ffinfo/airflow:$AIRFLOW_COMMIT
```
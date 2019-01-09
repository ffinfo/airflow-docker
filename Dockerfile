FROM python:3.6
RUN cd /opt && git clone https://github.com/apache/incubator-airflow.git
ARG AIRFLOW_COMMIT
RUN cd /opt/incubator-airflow && git checkout $AIRFLOW_COMMIT
ENV SLUGIFY_USES_TEXT_UNIDECODE=yes
RUN apt update && apt install libsasl2-dev
RUN cd /opt/incubator-airflow && pip install .[all]
RUN useradd -ms /bin/bash airflow

USER airflow
WORKDIR /home/airflow
ENV AIRFLOW_HOME=/home/airflow/airflow
RUN mkdir $AIRFLOW_HOME
ADD entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]

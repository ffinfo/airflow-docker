FROM python:3.6
RUN cd /opt && git clone https://github.com/apache/incubator-airflow.git
RUN cd /opt/incubator-airflow && git checkout 97c761ddabcee08deb1f774f637a1bafe22a3de6
ENV SLUGIFY_USES_TEXT_UNIDECODE=yes
RUN apt update && apt install libsasl2-dev
RUN cd /opt/incubator-airflow && pip install .[all]

ADD entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]

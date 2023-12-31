FROM apache/airflow:2.1.0

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    libffi-dev \
    libssl-dev \
    libmysqlclient-dev \
    && apt-get clean

USER airflow

RUN pip install --no-cache-dir 'apache-airflow[mysql]'

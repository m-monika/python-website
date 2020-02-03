FROM python:3

RUN pip install pipenv

ENV SRC_DIR /usr/local/src

WORKDIR ${SRC_DIR}

COPY Pipfile Pipfile.lock ${SRC_DIR}/

RUN pipenv install --system --clear

COPY ./ ${SRC_DIR}/

WORKDIR ${SRC_DIR}

ENTRYPOINT ["python"]
CMD ["src/server.py"]

FROM python:3.7

COPY requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src
EXPOSE 8000
WORKDIR src

RUN python3 manage.py migrate

CMD python3 manage.py runserver 0.0.0.0:8000

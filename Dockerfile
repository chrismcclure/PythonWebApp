FROM python:3.9

COPY requirements.txt /app/

WORKDIR /app

RUN pip install -r requirements.txt

RUN export SQLALCHEMY_TRACK_MODIFICATIONS=False

RUN apt update

COPY . /app

EXPOSE  5001

CMD [ "python", "./main.py" ]
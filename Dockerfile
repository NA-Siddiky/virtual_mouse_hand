FROM python:3.8.5

RUN apt-get update
RUN apt-get install -y libgl1-mesa-glx

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt-get update && apt-get install -y libgl1-mesa-glx 

RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt


COPY ./app /code/app

CMD ["python3", "./app/Virtual_Mouse.py"]

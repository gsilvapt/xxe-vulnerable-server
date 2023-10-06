FROM python:3.12

ARG FLAG

COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt
COPY templates/ /app/templates/

RUN echo $FLAG >> flag.txt

WORKDIR /app/

RUN pip install -r requirements.txt

EXPOSE 5000

CMD flask run --host 0.0.0.0

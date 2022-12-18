FROM python:3.10-bullseye

COPY ./app /
RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", ":8080", "app:app"]
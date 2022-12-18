FROM python:3.10-bullseye

COPY ./app /
RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", ":7860", "app:app"]
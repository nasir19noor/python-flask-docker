FROM python:3.11-alpine
LABEL maintainer="nasir@nasir.id"
copy . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 1001
ENTRYPOINT ["python"]
CMD ["src/app.py"]
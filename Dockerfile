FROM python:3.7.8-alpine3.11

# create workding directory
WORKDIR /usr/src/app

COPY . .

RUN pip3 install flask requests

ENV FLASK_ENV=development
ENV FLASK_APP=app

VOLUME ["/usr/src/app"]

EXPOSE 5000

CMD ["flask" , "run",  "--host=0.0.0.0"]


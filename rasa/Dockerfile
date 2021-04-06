FROM rasa/rasa:1.10.1

WORKDIR /app

COPY . .
RUN rasa train

ENTRYPOINT [ "rasa", "run", "--enable-api" ]

FROM docker:24.0

WORKDIR /app

COPY init.sh  .

COPY prune.sh .

ENV TZ="America/Los_Angeles"

ENV CRON="0 0 * * *"

RUN chmod +x init.sh

RUN chmod +x prune.sh

RUN touch log.log

# run the init.sh script, start cron and tail the log file
CMD ["/bin/sh", "-c", "/app/init.sh && crond -b -d 8 && tail -f /app/log.log"]

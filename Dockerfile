FROM alpine
ARG user password
RUN apk update && apk add git && apk add curl &&apk add make && apk add bash && git clone https://"${user}":"${password}"@gitlab.com/nanosek/devops-exam && make -C /devops-exam && mkdir /dtest && cp -rf devops-exam/* /dtest  
WORKDIR /dtest 
CMD ["bash","/dtest/run.sh"]

FROM node:14.10.1-alpine3.10

EXPOSE 3000

RUN npm i docsify-cli -g &&\
    docsify init /docs &&\
    chown -R nobody:nogroup /docs

ENTRYPOINT ["docsify", "serve", "/docs"]

# docker build --rm -t yinping/docsify .
# docker run --restart always --name=docsify --hostname=docsify -v /data/notes:/docs -p 3000:3000 -d yinping/docsify

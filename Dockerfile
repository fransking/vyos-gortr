FROM docker.io/cloudflare/gortr

ENV CACHE=""
ENV VERIFY=false
ENV CHECKTIME=false
ENV PORT=8082

COPY entrypoint.sh /

USER rtr
ENTRYPOINT ["./entrypoint.sh"]
CMD ["gortr"]

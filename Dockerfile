FROM alpine 
COPY check.sh /app/check.sh
COPY .gitignore /app/.gitignore
WORKDIR /app/
CMD ["sh","check.sh"]

FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY simpleapp.py /src/simpleapp.py

EXPOSE  8004
CMD ["python", "/src/simpleapp.py", "-p 8004"]


docker build . -t testimage && docker run -ti -p 7000:7000 -p 8080:8080 -p 8000:8000 testimage
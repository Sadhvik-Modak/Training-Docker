# Share your program / code in zip/tar​

# Install Python3.8t​

# Install pip3​

# pip3 install fastapi,uvicorn​

# uvicorn app 80:80

FROM ubuntu

RUN apt update -y && \
    apt install -y python3 python3-pip

COPY ./api/ .

RUN pip3 install -r requirements.txt --break-system-packages

ENTRYPOINT [ "uvicorn" , "main:app", "--reload" ]

# docker build . 
FROM continuumio/anaconda3:4.4.0
RUN pip install --upgrade pip
COPY . /usr/app/
EXPOSE 7777
WORKDIR /usr/app/
RUN pip install -r requirements --ignore-installed
ENTRYPOINT ["jupyter","notebook","--ip=0.0.0.0","--allow-root"]



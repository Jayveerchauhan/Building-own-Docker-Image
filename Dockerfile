FROM python: 3.8-apline

ADD app.py /tree

CMD [ "pyhon ", "/tree/app.py" ]
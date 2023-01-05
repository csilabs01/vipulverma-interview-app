From python:3.10

COPY . /interviewapp

WORKDIR /interviewapp

RUN useradd -m buildadmin && chown -R buildadmin:buildadmin /interviewapp /home/buildadmin
USER buildadmin
RUN  pip3 install -r requirements.txt && cd interviewapp

EXPOSE 8000

CMD  python3 /interviewapp/interviewapp/manage.py runserver 0.0.0.0:8000

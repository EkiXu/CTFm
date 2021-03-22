FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /backend
COPY ./backend/requirements.txt /backend/
RUN pip config set global.index-url https://mirrors.cloud.tencent.com/pypi/simple \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && pip install supervisor \
    && pip install uwsgi  \
    && pip install daphne \
    && pip install https://github.com.cnpmjs.org/chibisov/drf-extensions/archive/master.zip

COPY backend /backend/

COPY supervisord.conf /etc/supervisord.conf

EXPOSE 8086
EXPOSE 8087

CMD ["supervisord","-n","-c","/etc/supervisord.conf"]
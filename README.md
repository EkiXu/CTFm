# CTFm

![](/docs/assets/logo.png)

A CTF Competition Platform 

![](https://img.shields.io/badge/vuetify-2.2.11-lightgrey)
![](https://img.shields.io/github/license/ekixu/ctfm)
![](https://img.shields.io/pypi/djversions/djangorestframework)

Backend:![](https://img.shields.io/github/last-commit/EkiXu/CTFm_Backend)
Frontend:![](https://img.shields.io/github/last-commit/EkiXu/CTFm_Frontend)

**Under Construction**

## How to build

```
# Frontend Generate
cd frontend
yarn install
yarn build

# Run Sever
cp docker-compose.yml.template docker-compose.yml # And modify it yourself
cp script/db.cnf.template  script/db.cnf # And Modify it yourself
cp script/uwsgi.ini.template  script/uwsgi.ini # And Modify it yourself

docker-compose up -d --build
```
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
# Frontend Generate (optional)
cd frontend
yarn install
yarn build

# Dashboard Generate (optional)
cd frontend
yarn install
yarn build

# Run Sever
cp CTFm_backend/settings.py.template  CTFm_backend/settings.py # And Modify it yourself
docker-compose up -d --build

# Create Superuser
# attach the ctfm_ctfm container and run 
python manager.py createsuperuser
```
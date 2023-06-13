Online-cinema mickroservice web app
================================================================================================
## This application includes the following services:
- Admin Service (Django, PostgreSQL, ETL PostgreSQL to ElasticSearch)
- Content Delivery Service (FastAPI, ElasticSearch, Redis)
- Authentication Service with JWT tokens (Flask, PostgreSQL, Redis)
- User Generated Content (UGC) Service (FastAPI, Apache Kafka, ClickHouse)
- Notifications Service (in progress)
----------------------------------------------------------------------------------------------------------------------------------------

## Requirements
- Docker
- Docker Compose

## Installation
1. Clone the repository `git clone https://github.com/Shuich1/yp_cinema_root.git`
2. Pull all submodules using `make build`
3. Create all needed .env files with templates from sample.env
4. Run `make start` in the root directory to start the application
5. Run `make stop` in the root directory to stop the application

## Usage
- The Admin Service will be available at http://127.0.0.1/admin
- The Content Delivery Service documentation will be available at http://127.0.0.1/api/openapi
- The Authentication Service documentaiton will be available at http://127.0.0.1/auth/api/openapi
- [DBMS research](./research/README.md)
- The UGC Service documentaiton will be available at http://127.0.0.1/ugc/api/openapi

## Developers
- Антон Костюченко (askostyu)
- Георгий Андреев (everyoneismyfriend)
- Журавков Владислав (Shuich1)

## local dev

0. python 3.7
0. export DATABASE_URL = 'psql url'
1. `cat requirements.txt | xargs poetry add` 
2. python main.py 


## docker

```
docker build -t rate-api . && docker run --name rate-api -t -i -e DATABASE_URL=postgresql://user:pwd@dburl/exchange rate-api 
```
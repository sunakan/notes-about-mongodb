# Notes about MongoDB

```
$ make setup
$ make up
$ make bash
コンテナ内
$ mongo db:PORT/DB名
```

###  接続

```
HOST=127.0.0.1
PORT=27017
DB名=test
```

### Collectionを作る流れ

```
client コンテナ内
$ mongo db:27017/test
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
> use sample
switched to db sample
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
> db.createCollection("test")
{ "ok" : 1 }
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
sample  0.000GB
```

- use hogeをしただけではhoge DBはできてない
- db.createCollection("hoge")で中にコレクションを作成(SolrやESっぽい)

### Tips

- DB名は変更不可
- 削除はdb.dropDatabase()

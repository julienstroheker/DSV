## Docker Swarm Vagrant (DSV) - with 1.12 ##

Deploy an environmnet using Vagrant with per default :
* 1 Ubuntu machine running Docker Swarm as manager
* 2 Ubuntu machines running Docker Swarm as worker

Using the last version of Docker 1.12.0 (2016-07-14)

Possibility to change some settings like :
* Add more workers
* Change IP

### How to ###

```
git clone https://github.com/mtlgo/DSV.git
vagrant up
```

```
vagrant ssh manager
vagrant ssh node-1
vagrant ssh node-2
...
```

Ask questions or just follow me : [@ju_stroh](https://twitter.com/Ju_Stroh)
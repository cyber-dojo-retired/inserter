
[![Build Status](https://travis-ci.org/cyber-dojo/inserter.svg?branch=master)](https://travis-ci.org/cyber-dojo/inserter)

<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png"
alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

# cyberdojo/inserter docker image

- A docker-containerized micro-service for [cyber-dojo](http://cyber-dojo.org).
- Inserts old storer katas into a named docker-container (for testing)
- eg
```
docker run \
   --rm -it \
   --volume /var/run/docker.sock:/var/run/docker.sock \
   cyberdojo/inserter \
     test-web-storer
```
```
inserting duplicate katas into test-web-storer
...0BA7E1E01B
...0BA7E16149
...463748A0E8
...463748D943
inserting duplicate katas into test-web-storer
...1F00C1BFC8
...5A0F824303
...420B05BA0A
...420F2A2979
...421F303E80
...420BD5D5BE
...421AFD7EC5
```

- - - -

* [Take me to cyber-dojo's home github repo](https://github.com/cyber-dojo/cyber-dojo).
* [Take me to http://cyber-dojo.org](http://cyber-dojo.org).

![cyber-dojo.org home page](https://github.com/cyber-dojo/cyber-dojo/blob/master/shared/home_page_snapshot.png)
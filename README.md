# docker-rpi3-angular2-quickstart
Angular JS2 for Raspberry Pi Docker

Dockerfile is here.

Start with instructions found in http://blog.alexellis.io/getting-started-with-docker-on-raspberry-pi

Once you have docker set up and running, build this with

```
docker build -t angularjs:arm
```

Once built, use the following to run it.

```
docker run -it -p 3000:3000 -p 3001:3001 --name angularjs angularjs:arm
```

Once that is up and running, visit the website using your Raspberry Pi IP address and 3000 as the port.
```
http://<raspberry pi IP>:3000
```

Use
```
http://<raspberry pi IP>:3001
```

to get to browsersync access.

Finally, bring up a bash shell to start working through the Angular JS [Tour of Heroes](https://angular.io/docs/ts/latest/tutorial/toh-pt1.html) tutorial.

```
docker exec -it angularjs bash
```

Direct access to the image itself can be found at https://hub.docker.com/r/brereton/angularjs/


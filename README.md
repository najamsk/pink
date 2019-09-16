Build revel package (.tar.gz):

    CGO_ENABLED=0 revel package github.com/najamsk/revelplay/pink -s

Build docker image:

    docker build -t pink .

Run:

    docker run --rm -it --name pink -p 9000:9000 pink

### commands i ran so far

#### create new app
    revel new -a github.com/najamsk/revelplay/pink

#### package revel app
    GO_ENABLED=0 revel package -m prod
    

#### build docker image
    docker build -t pink/revel:latest .

#### run docker image
    docker run -i -t pink/revel:latest -p 9000:9000

### Start the web server:

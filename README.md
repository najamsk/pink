Build revel package (.tar.gz):

    CGO_ENABLED=0 revel package github.com/najamsk/pink -s

Build docker image:

    docker build -t pink .

Run:

    docker run --rm -it --name pink -p 9000:9000 pink

If revel package (or go build -i, really) gives you the error:
 go/pkg/linux_amd64/net.a: permission denied

You need to make revel not install the non-CGO version of standard packages.
Comment https://github.com/revel/cmd/blob/f4fb2ec091b3348c3ab1c315067f296e32e2c7a7/harness/build.go#L150
and rebuild the revel command line with go get -u -v github.com/revel/cmd/revel

It's explained in https://github.com/golang/go/issues/18981

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

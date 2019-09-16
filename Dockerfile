# you could do FROM scratch if you really need nothing
FROM alpine:3.10
# add the untarred file produced by revel package
ADD pink.tar.gz /opt
# whatever port
EXPOSE 9000
# I looked inside run.sh for this
CMD ["/opt/pink", "-importPath", "github.com/najamsk/pink", "-srcPath", "/opt/src", "-runMode", "prod"]

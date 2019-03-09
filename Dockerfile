from cern/slc6-base

MAINTAINER Michael Burgess <jburgess@mpe.mpg.de>

USER root
ENV USER='root'


RUN yum -y update && yum -y install paw && yum -y remove wget git nano  && yum -y clean all

RUN mkdir /workdir

ENTRYPOINT ["/bin/bash","--login","-c", "paw"]

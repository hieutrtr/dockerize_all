FROM centos:6.7

RUN yum -y update
ADD yum_list /yum_list
RUN yum -y install $(cat /yum_list)

ENTRYPOINT []

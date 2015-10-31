FROM centos:6.7

RUN sudo yum -y update
ADD yum_lit /yum_list
RUN sudo yum -y install $(cat /yum_list)

ENTRYPOINT [/bin/bash]

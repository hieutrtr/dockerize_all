FROM centos:6.7

RUN yum -y update
ADD yum_list /yum_list
ADD yum.repos.d /etc/yum.repos.d
ADD rpm-gpg /etc/pki/rpm-gpg
RUN yum -y install $(cat /yum_list)

ENTRYPOINT []

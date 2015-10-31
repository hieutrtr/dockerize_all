user=<your-user-on-server>
host=<IP>

ssh ${user}@${host} 'sudo rpm -qa --qf "%{NAME}-%{VERSION}-%{RELEASE}.%{ARCH}\n"' >> yum_list
scp ${user}@${host}:/etc/yum.repos.d ./
docker build -t hieutrtr/dockerize_all .

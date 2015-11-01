user=<your-user-on-server>
host=<IP>

ssh ${user}@${host} 'sudo rpm -qa --qf "%{NAME}-%{VERSION}-%{RELEASE}.%{ARCH}\n"' >> yum_list
scp -r ${user}@${host}:/etc/yum.repos.d ./
scp -r ${user}@${host}:/etc/pki/rpm-gpg ./
docker build -t hieutrtr/dockerize_all .

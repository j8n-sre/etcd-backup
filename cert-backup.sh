tar -cvf /root/etcd-backup/backup/k8s-cert_$(date '+%Y-%m-%d_%H-%M').tar /etc/kubernetes/pki/*		# cert 파일 백업
rsync -avz --delete /root/etcd-backup/backup/k8s-cert*.tar root@192.10.250.186:/master-etcd-backup/	# devops 노드로 백업파일 동기화

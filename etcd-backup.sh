etcdctl --endpoints=https://10.100.0.1:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key snapshot save /root/etcd-backup/backup/snapshot.etcd.$(date '+%Y-%m-%d_%H-%M').db
find /root/etcd-backup/backup/ -name 'snapshot.etcd.*.db' -mmin +720 -delete			# 12시간 지난 백업파일 삭제
rsync -avz --delete /root/etcd-backup/backup/ root@192.10.250.186:/master-etcd-backup/		# devops 노드로 백업파일 동기화

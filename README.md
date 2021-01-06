## Kubernetes ETCD Backup
- CronJob을 사용하여 30분 간격으로 백업한다.
- 서비스 배포 빈도에 맞춰 백업 간격을 조절한다.
- 백업한 파일은 devops 노드로 이동시키며, 최근 12시간 동안의 백업파일만 보관한다.

## Kubernetes Cert Backup
- cert 파일은 대부분 1년 주기로 갱신이 된다.
- CronJob을 사용하여 1년에 한번 백업한다. 
- 변경이 있을 시 수동 백업한다.

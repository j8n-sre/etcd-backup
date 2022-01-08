## Kubernetes ETCD Backup
- CronJob을 사용하여 30분 간격으로 백업한다.
- 서비스 배포 빈도에 맞춰 백업 간격을 조절한다.
- 백업한 파일은 devops 노드로 이동시키며, 최근 12시간 동안의 백업파일만 보관한다.

## Kubernetes Cert Backup
- CronJob을 사용하여 1년에 1회 백업한다. (cert 파일은 대부분 1년 주기로 갱신)
- 설치 일자를 기준으로 적절하게 설정, 백업파일은 devops 노드에 저장한다.

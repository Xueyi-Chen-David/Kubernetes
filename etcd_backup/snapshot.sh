sudo ETCDCTL_API=3 etcdctl snapsh save /tmp/etcd-backup.db \
--endpoints https://10.0.2.15:2379 \
--cert=/etc/kubernetes/pki/etcd/server.crt \
--key=/etc/kubernetes/pki/etcd/server.key \
--cacert=/etc/kubernetes/pki/etcd/ca.crt

# BASIC SETUP GRAFANA + PROMETHEUS + KUBE-STATE-METRICS
Repo ini berisi helm chart dan cara install grafana, prometheus, dan kube-state-metrics yang
akan selalu di update dan di release berdasarkan versi kubernetes yang di support.

Pada repo ini sudah ada default dashboard yang dapat di import ke dalam grafana.


# RELEASE INFO
kubernetes support tidak backward dan forward compatible, 
jadi gunakan release version sesuai dengan kubernetes yang digunakan.

| RELEASE VERSION | KUBERNETES VERSION |
| :-------------: | :----------------: |
| 1.0.0           |       1.8          |


# CARA INSTALL dan REMOVE
Jalankan shell script `monitoring-stack.sh`

```
./monitoring-stack.sh [install|remove]
```

# LOGIN GRAFANA
Setelah semua berhasil jalan, grafana dapat di akses menggunakan username dan password sebagai berikut : 
- username : admin
- password : admin

Ketika login pertama kali akan di minta untuk mengganti password default diatas.

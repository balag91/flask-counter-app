1. start git clone on the kubernetes master host using of following command.
  # cd /mnt
  # git clone http://giturl/flask-counter-app.git

2. deploy on the kubernetes master host.
  # cd /mnt/flask-counter-app
  # ./start.sh
3 test
  # kubectl get svc -n flask
  NAME            TYPE       CLUSTER-IP       EXTERNAL-IP   PORT(S)                          AGE
flask-service   NodePort   10.100.73.180    <none>        5000:32182/TCP                   18m
redis-service   NodePort   10.109.117.122   <none>        6379:30460/TCP,16379:32438/TCP   18m

  # ab -n 1 -c 100 -t 10 http://10.100.73.180:5000/

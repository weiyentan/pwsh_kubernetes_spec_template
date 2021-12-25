<%
@"apiVersion: apps/v1
kind: Deployment
metadata:
  name: $PLASTER_PARAM_project_title
  labels:
    <placeholder here> 
spec:
  replicas: <replicano>
  selector:
    matchLabels:
      <placeholder here>
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: <image_name>
        ports:
         - containerPort: <port no>
        volumeMounts:
         - mountPath: /data
           name: zookeeper-data

  "@
  %>
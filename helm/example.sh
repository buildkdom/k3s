POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=example,app.kubernetes.io/instance=example" -o jsonpath="{.items[0].metadata.name}")
CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")

echo "Visit http://127.0.0.1:8080 to use your application"

echo "Pod name: $POD_NAME"
echo "Container port: $CONTAINER_PORT"

kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT

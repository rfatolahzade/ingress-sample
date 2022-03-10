{
helm install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress --create-namespace \
  --set controller.admissionWebhooks.enabled=false
}


kubectl apply -f .
kubectl port-forward --namespace=ingress service/ingress-nginx-controller 8080:80

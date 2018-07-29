#/bin/sh

ip_address=$(kubectl get svc knative-ingressgateway -n istio-system -o json | jq -r ".status.loadBalancer.ingress[0].ip")
echo "Service IP: ${ip_address}"

curl -H "Host: helloworld-go.default.example.com" http://${ip_address}

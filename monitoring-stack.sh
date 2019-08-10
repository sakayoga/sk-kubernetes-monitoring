#!/bin/bash
__installStack () {
 kubectl create namespace monitoring
 kubectl apply -f prometheus/
 helm install --namespace custom-metrics-adapter --name kube-state-metrics stable/kube-state-metrics --version 0.16.0
 helm install --namespace monitoring --name grafana -f grafana/values.yaml grafana
}
__removeStack () {
  helm delete --purge grafana
  helm delete --purge kube-state-metrics
  kubectl delete -f prometheus/
  kubectl delete namespace monitoring
}

case $1 in 
	install)
		__installStack
		;;
	remove)
		__removeStack
		;;
	*)
		echo "usage $0 [install|remove]"
		exit 1
		;;
esac

storage:
	mkdir -p /data/prometheus-data
	mkdir -p /data/grafana-data
	kubectl apply -f pv-prometheus.yaml
	kubectl apply -f pvc-prometheus.yaml
	kubectl apply -f pv-grafana.yaml
	kubectl apply -f pvc-grafana.yaml

clean:
	kubectl delete pv,pvc --all


KIND_CLUSTER_NAME ?= "demo"
KIND_CONFIG ?= "./kind-config.yaml"
NAMESPACE ?= "default"

.PHONY: kind-create-cluster
kind-create-cluster:
	kind create cluster --config ${KIND_CONFIG} --name ${KIND_CLUSTER_NAME}

.PHONY: check-api
check-api:
	kubectl api-resources | grep 'validatingadmission'

.PHONY: example-1
example-1:
	kubectl -n ${NAMESPACE} apply --recursive -f ./example-1

.PHONY: example-2
example-2:
	kubectl -n ${NAMESPACE} apply --recursive -f ./example-2-workloads

.PHONY: example-3
example-3:
	kubectl -n ${NAMESPACE} apply --recursive -f ./example-3-configmap

.PHONY: apply-deployment
apply-deployment:
	kubectl apply -f ./deployment.yaml -n ${NAMESPACE}

.PHONY: apply-pod
apply-pod:
	kubectl apply -f ./pod.yaml -n ${NAMESPACE}

.PHONY: kind-delete-cluster
kind-delete-cluster:
	kind delete cluster --name ${KIND_CLUSTER_NAME}

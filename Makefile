
start:
	@minikube start --driver docker
	@kubectl apply -f mongo-config.yaml
	@kubectl apply -f mongo-secret.yaml
	@kubectl apply -f mongo.yaml
	@kubectl apply -f webapp.yaml
	@echo "Link do app rodando:"
	@minikube ip
	@echo "Acessar na porta 30100"

planB:
	@minikube service webapp-service


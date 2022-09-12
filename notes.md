secret for kaniko - kubectl create secret docker-registry docker-credentials --docker-username=[userid] --docker-password=[Docker Hub access token] --docker-email=[user email address] --namespace jenkins


k port-forward svc/jenkins-np -n jenkins 80 &
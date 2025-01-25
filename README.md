# Flask App with ArgoCD Deployment

## Steps

1. Build Docker image:
   ```
   docker build -t <your-dockerhub-username>/flask-app:latest .
   ```

2. Push to Docker Hub:
   ```
   docker push <your-dockerhub-username>/flask-app:latest
   ```

3. Apply Kubernetes manifests:
   ```
   kubectl apply -f k8s/
   ```

4. Access the service:
   ```
   minikube service flask-app-service
   ```

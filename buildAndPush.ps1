docker rmi sharanalwars/flask:latest --force

# Navigate to the 'app' directory
Set-Location -Path "C:\Users\Asus\OneDrive\Desktop\sopsXargocd\testing-argo-sops\app"

# Build the Docker image
docker build -t sharanalwars/flask:latest .

# Push the Docker image to Docker Hub
docker push sharanalwars/flask:latest
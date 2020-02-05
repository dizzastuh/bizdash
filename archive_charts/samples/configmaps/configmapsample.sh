# KUBERNETES configmap example
# source: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/

# Create the local directory
mkdir -p configure-pod-container/configmap/

# Download the sample files into `configure-pod-container/configmap/` directory
wget https://kubernetes.io/examples/configmap/game.properties -O configure-pod-container/configmap/game.properties
wget https://kubernetes.io/examples/configmap/ui.properties -O configure-pod-container/configmap/ui.properties

# Create the configmap
kubectl create configmap game-config --from-file=configure-pod-container/configmap/

# Show the contents
kubectl describe configmaps game-config

# Make yaml
kubectl get configmaps game-config -o yaml

export KOPS_STATE_STORE=gs://dizzastuh-kube-clusters/
export KOPS_FEATURE_FLAGS=AlphaAllowGCE # to unlock the GCE features


PROJECT=`gcloud config get-value project`
kops create cluster dizzastuh.page --zones us-west1-a --state ${KOPS_STATE_STORE}/ --project=${PROJECT}

PROJECT=`gcloud config get-value project`

if [ -z "$PROJECT" ]; then
  echo "Could not find a project.  Is your config enabled?"
  exit 1
fi

kops create cluster ${CLUSTER} \
  --cloud ${CLOUD}
  --project=${PROJECT} 
  --zones {ZONES}
  --state ${KOPS_STATE_STORE}
  --networking weave

kops update cluster --name ${CLUSTER} --yes

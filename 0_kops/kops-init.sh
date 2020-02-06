if [ -z "$PROJECT" ]; then
  echo "Could not find a project.  Is your config enabled?"
  exit 1
fi

# kops create cluster ${CLUSTER} --cloud ${CLOUD} --project=${PROJECT} --zones ${ZONES} --state ${KOPS_STATE_STORE} --networking=weave

kops create cluster \
       --cloud gce \
       --state "${KOPS_STATE_STORE}" \
       --zones "${ZONES}"  \
       --name ${CLUSTER} \
       --project ${PROJECT} \
       --yes

kops update cluster --name ${CLUSTER} --yes

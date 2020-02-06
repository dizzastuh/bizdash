if [ -z "$PROJECT" ]; then
  echo "Could not find a project.  Is your config enabled?"
  exit 1
fi

kops create cluster \
       --cloud gce \
       --state "${KOPS_STATE_STORE}" \
       --zones "${ZONES}"  \
       --name ${CLUSTER} \
       --project ${PROJECT} \
       --yes

kops update cluster --name ${CLUSTER} --yes

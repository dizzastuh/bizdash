#!/bin/bash

echo "CREATING CLUSTER..."
kops create cluster \
       --cloud gce \
       --state $KOPS_STATE_STORE \
       --zones $ZONES \
       --name $CLUSTER \
       --project $PROJECT \
       --yes

# echo "UPDATING CLUSTER..."
# kops update cluster --name $CLUSTER --yes

# echo "UPDATING CLUSTER..."
# kops rolling-update cluster $CLUSTER

# kops export kubecfg $CLUSTER

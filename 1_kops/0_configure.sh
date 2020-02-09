#!/bin/bash

gcloud auth application-default login
gcloud config set project $PROJECT
gcloud config set computezone $ZONES

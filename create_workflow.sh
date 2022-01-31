#!/bin/bash

PROJECT_ID=<SET_YOUR_OWN>
SA_NAME=workflow-sa

gcloud iam service-accounts create $SA_NAME
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member "serviceAccount:${SA_NAME}@${PROJECT_ID}.iam.gserviceaccount.com" \
    --role "roles/logging.logWriter"
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member "serviceAccount:${SA_NAME}@${PROJECT_ID}.iam.gserviceaccount.com" \
    --role "roles/bigquery.admin"

gcloud workflows deploy bq-flow \
    --source bq_flow.yaml \
    --location europe-west4 \
    --service-account ${SA_NAME}@${PROJECT_ID}.iam.gserviceaccount.com
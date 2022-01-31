#!/bin/bash

# remember to replace PROJECT_ID and DATASET_ID in the sql files first
# or use something like sed to do it programmatically
# (or better, look into dbt or dataform)
bq query < get_slots.sql
bq query < train_model.sql
bq query < drop_slots.sql

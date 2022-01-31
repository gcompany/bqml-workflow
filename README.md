## BigQuery ML, Reservations and Cloud Workflows

This repo accompanies a blog post (link coming soon) on how to set up BigQuery Flex slots in order to train a matrix factorization model, and how to automate the required steps with Cloud Workflows.

The setup consists of two parts:

### BigQuery stored procedures

Use the `*.sql` files to create the stored procedures that are called from the YAML file.

See `create_procedures.sh` for an indication of how to do this from the command-line. Otherwise, simply copy-paste the code in the files to the GCP console.

### Workflow file

The workflow is defined in `bq_flow.yaml`. You can run `create_workflow.sh` to create a service account with (more than the) necessary permissions and deploy the workflow to GCP. This can again all be done through the GCP console as well, of course.
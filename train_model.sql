-- create and train a matrix factorization model in BigQuery
CREATE OR REPLACE PROCEDURE `PROJECT_ID.DATASET_ID.train_model`()
BEGIN
CREATE OR REPLACE MODEL `PROJECT_ID.DATASET_ID.explicit_mf`
 OPTIONS(MODEL_TYPE='MATRIX_FACTORIZATION') AS
SELECT
  user,
  item,
  rating
FROM
  `PROJECT_ID.DATASET_ID.rating_matrix`;
END;
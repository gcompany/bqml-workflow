-- remove a BigQuery Flex Slots reservation
CREATE OR REPLACE PROCEDURE `PROJECT_ID.DATASET_ID.drop_slots`()
BEGIN
DROP ASSIGNMENT IF EXISTS
`PROJECT_ID.region-eu.my-reservation.my-assignment`;
DROP RESERVATION IF EXISTS
`PROJECT_ID.region-eu.my-reservation`;
DROP CAPACITY IF EXISTS
`PROJECT_ID.region-eu.my-commitment`;
END;
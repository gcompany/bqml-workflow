-- create a BigQuery Flex Slots reservation
CREATE OR REPLACE PROCEDURE `PROJECT_ID.DATASET_ID.get_slots`()
BEGIN
CREATE CAPACITY `PROJECT_ID.region-eu.my-commitment` 
AS JSON """{
 "slot_count": 100,
 "plan": "FLEX"
}""";
CREATE RESERVATION `PROJECT_ID.region-eu.my-reservation`
AS JSON """{
 "slot_capacity": 100
}""";
CREATE ASSIGNMENT `PROJECT_ID.region-eu.my-reservation.my-assignment`
AS JSON """{
 "assignee": "projects/PROJECT_ID",
 "job_type": "QUERY"
}""";
END;
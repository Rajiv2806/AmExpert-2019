SELECT 'av_campaign_data' AS dataset_name, COUNT(*) AS record_count FROM av_campaign_data
UNION
SELECT 'av_coupon_item_mapping' AS dataset_name, COUNT(*) AS record_count FROM av_coupon_item_mapping
UNION
SELECT 'av_customer_transaction_data' AS dataset_name, COUNT(*) AS record_count FROM av_customer_transaction_data
UNION
SELECT 'av_customer_demographics' AS dataset_name, COUNT(*) AS record_count FROM av_customer_demographics
UNION
SELECT 'av_item_data' AS dataset_name, COUNT(*) AS record_count FROM av_item_data
UNION
SELECT 'av_train' AS dataset_name, COUNT(*) AS record_count FROM av_train
UNION
SELECT 'av_test' AS dataset_name, COUNT(*) AS record_count FROM av_test;
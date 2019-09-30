-- Distribution of Redumption Status
select redemption_status
       ,count(*) as count_of_redumptions
from av_train 
group by redemption_status;


-- Distribution of Redumption Status over campaign ID
select campaign_id, redemption_status
       ,count(*) as count_of_redumptions
from av_train 
where redemption_status = 1
group by campaign_id, redemption_status
order by campaign_id;

-- 
select * 
from
    (select campaign_id
            ,redemption_status 
     from av_train) src
    pivot (count(*) for redemption_status in (0 as non_redeemed,1 as redeemed))
ORDER BY campaign_id;

--
select campaign_id, end_date-start_date as no_days_campaign
from av_campaign_data
order by campaign_id;


-- Distribution of Redumption Status
select Distinct campaign_id as train_campaigns from av_train order by campaign_id; 
select Distinct campaign_id as test_campaigns from av_test order by campaign_id; 


-- count_of_item_categories
select category
       ,COUNT(*)  as count_of_item_categories
from av_item_data
group by category;

-- count_of_brand_types
select brand_type
       ,COUNT(*)  as count_of_brand_types
from av_item_data
group by brand_type;

-- coupon_item_string --todo
select coupon_id
       ,item_id
from av_coupon_item_mapping
order by coupon_id;




select * 
from av_train
where campaign_id = 1;

select count(*)
from av_train
where campaign_id = 1;

select * 
from av_campaign_data
where campaign_id = 1;

-- Campaign - 1: 12-DEC-12	18-JAN-13
select *
from av_customer_transaction_data
where date_of_txn between '12-DEC-12' and '18-JAN-13'
and coupon_discount != 0;

-- Distribution of Redumption Status
select redemption_status
       ,count(*) as count_of_redumptions
from av_train 
group by redemption_status;

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
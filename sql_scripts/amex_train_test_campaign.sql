select 
     train.id
     ,train.customer_id
     ,train.campaign_id
     ,campaign.campaign_type
     ,campaign.start_date
     ,campaign.end_date
     ,train.coupon_id
     ,train.redemption_status
from 
     av_train train
    ,av_campaign_data campaign 
where train.campaign_id = campaign.campaign_id;


select 
     test.id
     ,test.customer_id
     ,test.campaign_id
     ,campaign.campaign_type
     ,campaign.start_date
     ,campaign.end_date
     ,test.coupon_id
     ,null as redemption_status
from 
     av_test test
    ,av_campaign_data campaign 
where test.campaign_id = campaign.campaign_id;
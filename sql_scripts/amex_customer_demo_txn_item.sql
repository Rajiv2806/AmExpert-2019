select txn.customer_id
       ,txn.date_of_txn
       ,txn.item_id
       ,item.brand
       ,item.brand_type
       ,item.category
       ,txn.quantity
       ,txn.selling_price
       ,txn.other_discount
       ,txn.coupon_discount
       ,demo.age_range
       ,demo.marital_status
       ,demo.rented
       ,demo.family_size
       ,demo.no_of_children
       ,demo.income_bracket
from av_customer_transaction_data txn
    , av_item_data item
    , av_customer_demographics demo 
where txn.item_id = item.item_id 
      and txn.customer_id=demo.customer_id;
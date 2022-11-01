require 'rails_helper'

RSpec.describe OrderItem, type: :model do
 attributes=[
  {product: :belong_to},
  {order: :belong_to},
  {order_date: :presence},
  {delivery_date: :presence},
 ]
 include_examples('model_shared_spec', :order_item, attributes)

end

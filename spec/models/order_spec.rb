require 'rails_helper'

RSpec.describe Order, type: :model do
 attributes = [
  {user: :belong_to},
  {order_status: :presence},
  {price: :presence},
  {quantity: :presence},
 ]
 include_examples('model_shared_spec', :order, attributes)
end

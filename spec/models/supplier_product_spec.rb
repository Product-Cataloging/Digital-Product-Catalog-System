require 'rails_helper'

RSpec.describe SupplierProduct, type: :model do
 attributes=[
  {remark: :presence},
  {supplier_purchase_price: :presence},
  {supplier_margin: :presence},
  {supplier_notes: :presence},
  {quantity_unit: :presence},
  {supplier: :belong_to},
  {product: :belong_to},
  {currency: :belong_to}



 ]

 
end

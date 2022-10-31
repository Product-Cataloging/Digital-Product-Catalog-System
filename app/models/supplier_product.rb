class SupplierProduct < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
  belongs_to :currency

delegate(:company_name, to: :supplier, prefix: true)
delegate(:name, to: :product, prefix: true)
delegate(:name, to: :currency, prefix: true)

validates :remark, :supplier_purchase_price, :supplier_margin, :supplier_notes, :quantity_unit, presence: true
end

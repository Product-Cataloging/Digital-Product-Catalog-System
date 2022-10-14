class AddQuantityToQuotationRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :quotation_requests, :quantity, :integer
  end
end

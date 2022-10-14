class AddStatusToQuotationRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :quotation_requests, :status, :string, null: false
  end
end

class RemoveUnitOfMeasureFromProductItem < ActiveRecord::Migration[7.0]
  def change
    remove_reference :product_items, :unit_of_measure, null: false, foreign_key: true
  end
end

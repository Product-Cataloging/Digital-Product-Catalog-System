class DropUnitOfMeasure < ActiveRecord::Migration[7.0]
  def change
    drop_table :unit_of_measures
  end
end

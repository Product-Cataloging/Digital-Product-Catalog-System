class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.string :tag

      t.timestamps
    end
  end
end

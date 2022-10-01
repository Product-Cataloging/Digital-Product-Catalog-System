class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.integer :total_piece ,null: false
      t.float :general_weight ,null: false
      t.float :price ,null: false

      t.timestamps
    end
  end
end

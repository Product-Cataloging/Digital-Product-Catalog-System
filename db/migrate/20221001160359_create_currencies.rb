class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :name ,null:false
      t.string :aliass ,null:false

      t.timestamps
    end
  end
end

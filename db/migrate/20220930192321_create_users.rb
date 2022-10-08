class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :user_type, null: false, default: User::OPERATOR
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end

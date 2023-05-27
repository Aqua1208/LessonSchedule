class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, null: false do |t|
      t.string :user_name
      t.string :password_digest
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end

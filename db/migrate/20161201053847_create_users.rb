class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :uuid
      t.string :authentication_token
      t.timestamps
    end
    add_index :users, :uuid
    add_index :users, :authentication_token
  end
end

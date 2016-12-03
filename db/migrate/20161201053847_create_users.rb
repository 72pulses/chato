#
# CreateUsers
#
# @author aby
#
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :uuid, unique: true
      t.string :authentication_token, unique: true
      t.timestamps
    end
    add_index :users, :uuid
    add_index :users, :authentication_token
  end
end

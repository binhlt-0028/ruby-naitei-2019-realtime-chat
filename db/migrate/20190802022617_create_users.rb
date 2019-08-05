class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.string :activation_token
      t.string :reset_token
      t.boolean :activated

      t.timestamps
    end
  end
end

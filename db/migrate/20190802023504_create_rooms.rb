class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :type
      t.datetime "new_message", null: false
      t.timestamps
    end
  end
end

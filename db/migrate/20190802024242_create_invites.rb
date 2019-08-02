class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.string :user_email
      t.string :invite_digest
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end

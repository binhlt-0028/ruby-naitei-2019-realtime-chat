class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  scope :recent, ->{order created_at: :desc}
end

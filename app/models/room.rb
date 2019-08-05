class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :admins, dependent: :destroy
  has_many :invites, dependent: :destroy
  has_many :join_rooms, dependent: :destroy
  scope :recent, ->{order new_message: :desc}
end

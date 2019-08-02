class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :admins, dependent: :destroy
  has_many :invites, dependent: :destroy
  has_many :join_rooms, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end

class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :commands, dependent: :destroy
  has_many :personalities, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end

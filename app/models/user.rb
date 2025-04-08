class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :commands, dependent: :destroy
  belongs_to :avatar, optional: true # você vai definir esse model depois
end

class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :sender, inclusion: { in: %w[user gepetron] }
end

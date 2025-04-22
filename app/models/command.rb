class Command < ApplicationRecord
  belongs_to :user

  validates :trigger, :action, presence: true
end

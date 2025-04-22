class Personality < ApplicationRecord
  belongs_to :user

  validates :tone, :description, presence: true
end

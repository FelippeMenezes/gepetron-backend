class Command < ApplicationRecord
  belongs_to :user

  enum :status, [ :pending, :executed, :failed ]
end

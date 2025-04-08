class Command < ApplicationRecord
  belongs_to :user

  enum status: { pending: "pending", executed: "executed", failed: "failed" }
end

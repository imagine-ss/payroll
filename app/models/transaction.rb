class Transaction < ApplicationRecord
  belongs_to :user

  validates_presence_of :amount, :description, :user_id, :payed_by
end

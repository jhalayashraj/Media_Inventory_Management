class PurchasedSlot < ApplicationRecord
  belongs_to :user
  belongs_to :resale_timeslot
end

class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :purchased_slot
end

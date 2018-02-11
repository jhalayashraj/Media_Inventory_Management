class ResaleTimeslot < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
end

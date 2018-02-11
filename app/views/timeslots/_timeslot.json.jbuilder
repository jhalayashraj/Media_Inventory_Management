json.extract! timeslot, :id, :user_id, :duration, :price, :frequency, :status, :on_resale, :created_at, :updated_at
json.url timeslot_url(timeslot, format: :json)

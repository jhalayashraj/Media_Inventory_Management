json.extract! notification, :id, :user_id, :message, :purchased_slot_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)

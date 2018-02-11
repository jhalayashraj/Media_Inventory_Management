class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.string :message
      t.references :purchased_slot, foreign_key: true

      t.timestamps
    end
  end
end

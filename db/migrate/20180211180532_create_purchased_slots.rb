class CreatePurchasedSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :purchased_slots do |t|
      t.references :user, foreign_key: true
      t.references :resale_timeslot, foreign_key: true
      t.string :card_last_four
      t.string :card_type

      t.timestamps
    end
  end
end

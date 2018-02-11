class CreateResaleTimeslots < ActiveRecord::Migration[5.1]
  def change
    create_table :resale_timeslots do |t|
      t.references :timeslot, foreign_key: true
      t.references :user, foreign_key: true
      t.float :slot_duration
      t.float :price

      t.timestamps
    end
  end
end

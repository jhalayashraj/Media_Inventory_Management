class CreateTimeslots < ActiveRecord::Migration[5.1]
  def change
    create_table :timeslots do |t|
      t.integer :user_id
      t.float :duration
      t.float :price
      t.float :frequency
      t.boolean :status, default: true
      t.integer :on_resale, default: false

      t.timestamps
    end
  end
end

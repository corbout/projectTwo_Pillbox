class CreatePillboxes < ActiveRecord::Migration
  def change
    create_table :pillboxes do |t|
      t.string :medication_name
      t.string :dosage
      t.integer :frequency
      t.string :route
      t.string :indication
      t.string :prescribing_physician
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

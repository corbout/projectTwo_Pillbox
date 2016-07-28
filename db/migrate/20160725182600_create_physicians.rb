class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :title 
      t.string :f_name
      t.string :l_name
      t.string :specialty
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone_number
      t.string :email
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

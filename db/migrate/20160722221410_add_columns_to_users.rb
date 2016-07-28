class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string
    add_column :users, :username, :string
    add_column :users, :address_line_one, :string
    add_column :users, :address_line_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
    add_column :users, :phone_number, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :gender, :string

  end
end

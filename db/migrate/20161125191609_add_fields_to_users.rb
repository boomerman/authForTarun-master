class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :roll_no, :integer
    add_column :users, :branch, :string
    add_column :users, :year, :string
 

  end
end

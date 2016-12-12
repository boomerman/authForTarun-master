class AddRollNoToAssignment < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :roll_no, :integer
  end
end

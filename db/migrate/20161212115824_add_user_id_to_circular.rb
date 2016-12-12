class AddUserIdToCircular < ActiveRecord::Migration[5.0]
  def change
    add_column :circulars, :user_id, :integer
  end
end

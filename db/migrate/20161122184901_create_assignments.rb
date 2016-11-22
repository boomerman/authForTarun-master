class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :subject
      t.string :submitted_to
      t.string :assignment_no
      t.string :attachment

      t.timestamps
    end
  end
end

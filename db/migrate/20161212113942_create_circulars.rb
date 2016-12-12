class CreateCirculars < ActiveRecord::Migration[5.0]
  def change
    create_table :circulars do |t|
      t.string :subject
      t.string :year
      t.string :branch
      t.string :group
      t.string :atach

      t.timestamps
    end
  end
end

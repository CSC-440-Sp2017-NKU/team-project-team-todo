class CreateMajors < ActiveRecord::Migration[5.0]
  def change
    create_table :majors do |t|
      t.integer :Colleges
      t.text :description

      t.timestamps
    end
    add_index :majors, :Colleges
  end
end

class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :Majors
      t.text :description
      t.string :course_id

      t.timestamps
    end
    add_index :courses, :Majors
  end
end

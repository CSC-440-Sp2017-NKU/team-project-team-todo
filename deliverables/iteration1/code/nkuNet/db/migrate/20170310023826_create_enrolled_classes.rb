class CreateEnrolledClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :enrolled_classes do |t|
      t.integer :Logins
      t.integer :Courses
      t.boolean :active

      t.timestamps
    end
    add_index :enrolled_classes, :Logins
    add_index :enrolled_classes, :Courses
  end
end

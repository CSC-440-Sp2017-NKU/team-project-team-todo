class CreateQAndAs < ActiveRecord::Migration[5.0]
  def change
    create_table :q_and_as do |t|
      t.integer :Logins
      t.integer :rating
      t.boolean :active_flag
      t.text :q_a_text
      t.date :create_time

      t.timestamps
    end
    add_index :q_and_as, :Logins
  end
end

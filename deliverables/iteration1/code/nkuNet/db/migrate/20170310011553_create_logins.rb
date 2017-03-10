class CreateLogins < ActiveRecord::Migration[5.0]
  def change
    create_table :logins do |t|
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :LoginTypes
      t.boolean :active_flag

      t.timestamps
    end
    add_index :logins, :LoginTypes
  end
end

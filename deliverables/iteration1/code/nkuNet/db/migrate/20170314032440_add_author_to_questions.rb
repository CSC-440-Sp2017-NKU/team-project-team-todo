class AddAuthorToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :author, :string
  end
end

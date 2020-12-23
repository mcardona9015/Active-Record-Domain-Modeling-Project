class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.integer :category_id
      t.integer :user_id
    end
  end
end

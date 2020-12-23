class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.integer :user_id
      t.timestamps
      t.datetime :due_date
      t.boolean :checked_out, default: false
      t.boolean :overdue
    end
  end
end

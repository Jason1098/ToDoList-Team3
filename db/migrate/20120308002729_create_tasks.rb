class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :name
      t.date :due_date
      t.boolean :completed
      t.integer :priority

      t.timestamps
    end
  end
end

class AddCompletedToLists < ActiveRecord::Migration
  def change
    add_column :lists, :completed, :boolean, :default => 0
    add_column :lists, :deleted, :boolean, :default => 0

  end
end

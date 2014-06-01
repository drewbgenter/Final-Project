class Remove < ActiveRecord::Migration
  def change
    remove_column :tasks, :is_completed
  end
end

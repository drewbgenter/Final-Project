class Removeisclaimedfromtasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :is_claimed
  end
end

class Removeclaimid < ActiveRecord::Migration
  def change
    remove_column :tasks, :claimer_id
  end
end

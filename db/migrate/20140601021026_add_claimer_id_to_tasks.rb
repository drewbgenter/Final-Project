class AddClaimerIdToTasks < ActiveRecord::Migration
  def change
    add_column(:tasks, :claimer_id, :integer)
  end
end

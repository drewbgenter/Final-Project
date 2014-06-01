class Removecompleteid < ActiveRecord::Migration
  def change
    remove_column :tasks, :completer_id
  end
end

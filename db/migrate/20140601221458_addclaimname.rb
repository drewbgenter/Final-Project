class Addclaimname < ActiveRecord::Migration
  def change
    add_column :tasks, :claimer, :string
  end
end

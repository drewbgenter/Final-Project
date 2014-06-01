class Addcompletename < ActiveRecord::Migration
  def change
    add_column :tasks, :completer, :string
  end
end

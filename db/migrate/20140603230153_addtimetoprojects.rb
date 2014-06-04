class Addtimetoprojects < ActiveRecord::Migration
  def change
    add_column :projects, :time, :string
  end
end

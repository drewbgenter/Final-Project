class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :completer_id
      t.boolean :is_completed
      t.boolean :is_claimed
      t.datetime :deadline
      t.text :description
      t.string :title
      t.integer :project_id

      t.timestamps

    end
  end
end

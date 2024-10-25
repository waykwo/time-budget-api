class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :status
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.decimal :hours_worked
      t.string :project

      t.timestamps
    end
  end
end

class RenameType < ActiveRecord::Migration[7.1]
  def change
    change_table :tasks do |t|
      t.rename :type, :task_type
    end
  end
end

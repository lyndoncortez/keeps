class AddDeadlineToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :deadline, :string
  end
end

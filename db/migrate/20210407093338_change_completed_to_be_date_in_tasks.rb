class ChangeCompletedToBeDateInTasks < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :deadline, :date, using: 'deadline::date'
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end

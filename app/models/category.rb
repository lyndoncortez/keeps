class Category < ApplicationRecord
  has_many :tasks
  belongs_to :user

  validates :title, presence: true

  def tasks_completed
    tasks.select { |task| task.completed? }.count
  end

  def total_tasks
    tasks.count
  end
end

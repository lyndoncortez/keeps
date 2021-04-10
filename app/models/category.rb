class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :title, presence: true

  def tasks_completed
    tasks.select { |task| task.completed? }.count
  end
end

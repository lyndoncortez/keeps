class Task < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :status, presence: true

   STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Completed', 'completed']
  ]

  def badge_color
    case status
    when 'not-started'
        'dark'
    when 'in-progress'
        'warning text-dark'
    when 'completed'
        'success'
    end
  end

  def completed?
    status == 'completed'
  end

  def in_progress?
    status == 'in-progress'
  end

  def not_started?
    status == 'not-started'
  end
  

end

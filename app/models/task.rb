class Task < ApplicationRecord
  belongs_to :category

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'completed'] }

   STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'completed']
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

end

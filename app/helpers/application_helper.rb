module ApplicationHelper
  def format_date(date, format = :rfc822)
    date.blank? ? '--' : date.to_s(format)
  end
end

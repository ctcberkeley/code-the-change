module ApplicationHelper
  def title(title)
    content_for :title, title.to_s
  end
  def description(description)
    content_for :description, description.to_s
  end
end

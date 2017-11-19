module ApplicationHelper
  # People helpers
  def title(person)
    person.senpai_title || person.grade.title
  end
end

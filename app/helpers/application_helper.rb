# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def markdown(text)
    text.blank? ? "" : BlueCloth.new(text).to_html.html_safe
  end
end

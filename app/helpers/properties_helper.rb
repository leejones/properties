module PropertiesHelper
  def link_to_google_maps(text, property)
    address = [property.street, property.city, property.state, property.zip].map { |a| CGI::escape(a.to_s).gsub(/\s/, '+') }.join(', ')
    link_to text, "http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=#{address}&z=17"
  end

  def title_for_property(property)
    property.name.blank? ? property.street : "#{property.name}: #{property.street}"
  end
end

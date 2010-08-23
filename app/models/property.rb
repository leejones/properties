class Property < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, 
    :reject_if => lambda { |p| p[:url].blank? }, 
    :allow_destroy => true
end

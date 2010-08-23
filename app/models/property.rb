class Property < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  belongs_to :property_type
  accepts_nested_attributes_for :photos, 
    :reject_if => lambda { |p| p[:url].blank? }, 
    :allow_destroy => true
    
  named_scope :favorites, :conditions => { :favorite => true }
  named_scope :unfavorites, :conditions => { :favorite => false }
end

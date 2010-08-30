class Property < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  belongs_to :property_type
  accepts_nested_attributes_for :photos, 
    :reject_if => lambda { |p| p[:url].blank? }, 
    :allow_destroy => true
    
  scope :favorites, :conditions => { :favorite => true, :archived => false }, :order => "updated_at DESC"
  scope :unfavorites, :conditions => { :favorite => false, :archived => false }, :order => "updated_at DESC"
  scope :active, :conditions => { :archived => false }, :order => "updated_at DESC"
  scope :archives, :conditions => { :archived => true }, :order => "updated_at DESC"
end

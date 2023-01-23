class Property < ApplicationRecord
  belongs_to :type  # this validates presence of Type
  
  validates :title, presence: true
  validates :area, presence: true
  validates :price, :numericality => {:only_integer => true}
  # Description is optional therefore not validated
end

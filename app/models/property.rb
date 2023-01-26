class Property < ApplicationRecord
  belongs_to :type  # this validates presence of Type
  belongs_to :building  # this validates presence of Building
  
  validates :title, presence: true
  # Area_id is not validated because a user's typed-in area might not match one of the existing areas
  validates :area_description, presence: true
  validates :price, :numericality => {:only_integer => true}
  # Description is optional therefore not validated
  # Bathrooms is optional therefore not validated

  has_many_attached :images
end

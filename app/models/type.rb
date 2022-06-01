# == Schema Information
#
# Table name: types
#
#  id           :integer          not null, primary key
#  garment_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Type < ApplicationRecord

  has_many(:garments, { :class_name => "Photo", :foreign_key => "type", :dependent => :destroy })


  #COMBINATIONS

  #Bodysuit + Pants
  #Bodysuit + Skirt
  #Bodysuit + Shorts
  #Bodysuit + Pants + Jackets and Coats
  #Bodysuit + Skirt + Jackets and Coats
  #Bodysuit + Shorts + Jackets and Coats
  #Bodysuit + Pants + Vests
  #Bodysuit + Skirt + Vests
  #Bodysuit + Shorts + Vests


  #Tops + Pants
  #Tops + Skirt
  #Tops + Shorts
  #Tops + Pants + Jackets and Coats
  #Tops + Skirt + Jackets and Coats
  #Tops + Shorts + Jackets and Coats
  #Tops + Pants + Vests
  #Tops + Skirt + Vests
  #Tops + Shorts + Vests

  #Dress
  #Dress + Jackets and Coats
  
  #Jumpsuit
  #Jumpsuit + Jackets and Coats

end

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

  #The algorithm will look something like

  # @garment_1.hex color = base_color 1

  # If base_color_1 == navy
    #make a each do with color_combination using base hex code

    #combination.save



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


  #at the end

  #if color_combination.valid? && type_combination.valid?

  #show garment

  #else

  #blank

  #end

end

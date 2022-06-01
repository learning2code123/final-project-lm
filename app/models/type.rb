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

  # @garment_1.hex_color = base_color_1

  # where to find combination hex code

  #color combination table for a match

  #do this in the controller action on the looks controller show action

  #i can also do it in the looks model

  #combinations each do |a_combination| 
  
  #look at the other garments that have those colors

  #have that as a list




  # If b
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

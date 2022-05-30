# == Schema Information
#
# Table name: looks
#
#  id          :integer          not null, primary key
#  description :string
#  garment_1   :integer
#  garment_2   :integer
#  garment_3   :integer
#  garment_4   :integer
#  garment_5   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#
class Looks < ApplicationRecord

  belongs_to(:first_garment, { :required => true, :class_name => "Garment", :foreign_key => "garment_1" })

  #do I need to make one of this for each garment_x?

  belongs_to(:second_garment, { :class_name => "Garment", :foreign_key => "garment_2" })
  
  belongs_to(:person, { :required => true, :class_name => "User", :foreign_key => "owner_id", :counter_cache => true })
  

end

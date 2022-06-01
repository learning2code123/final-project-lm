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

  belongs_to(:first_garment, { :required => true, :class_name => "Photo", :foreign_key => "garment_1" })

  belongs_to(:second_garment, { :class_name => "Photo", :foreign_key => "garment_2" })

  belongs_to(:third_garment, { :class_name => "Photo", :foreign_key => "garment_3" })

  belongs_to(:fourth_garment, { :class_name => "Photo", :foreign_key => "garment_4" })

  belongs_to(:fifth_garment, { :class_name => "Photo", :foreign_key => "garment_5" })
  
  belongs_to(:person, { :required => true, :class_name => "User", :foreign_key => "owner_id" })

  validates(:description, { :presence => true })

  #validates(:garment_1, { :uniqueness => true })

  #validates(:garment_2, { :uniqueness => true })

  #validates(:garment_3, { :uniqueness => true })

  #validates(:garment_4, { :uniqueness => true })

  #validates(:garment_5, { :uniqueness => true })

end

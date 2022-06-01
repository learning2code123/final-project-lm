# == Schema Information
#
# Table name: photos
#
#  id           :integer          not null, primary key
#  caption      :text
#  garment_type :string
#  hex_code     :string
#  image        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  owner_id     :integer
#
class Photo < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many(:possible_looks_1, { :class_name => "Looks", :foreign_key => "garment_1", :dependent => :destroy })

  #do I need to make one of this for each garment_x?

  has_many(:possible_looks_2, { :class_name => "Looks", :foreign_key => "garment_2", :dependent => :destroy })

  has_many(:possible_looks_3, { :class_name => "Looks", :foreign_key => "garment_3", :dependent => :destroy })

  has_many(:possible_looks_4, { :class_name => "Looks", :foreign_key => "garment_4", :dependent => :destroy })

  has_many(:possible_looks_5, { :class_name => "Looks", :foreign_key => "garment_5", :dependent => :destroy })

  #check w/ Jelani

  belongs_to(:person, { :required => true, :class_name => "User", :foreign_key => "owner_id" })

   #validates :type, :presence => true

end

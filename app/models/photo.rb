# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  hex_code   :string
#  image      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#
class Photo < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many(:possible_looks, { :class_name => "Look", :foreign_key => "garment_1", :dependent => :destroy })

  #do I need to make one of this for each garment_x?

  has_many(:look_combinations, { :class_name => "Look", :foreign_key => "garment_2", :dependent => :destroy })

  #check

  belongs_to(:person, { :required => true, :class_name => "User", :foreign_key => "owner_id", :counter_cache => true })

end

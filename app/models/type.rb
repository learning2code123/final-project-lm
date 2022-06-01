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

end

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

  validates(:hex_code, { :presence => true })
  validates(:type, { :presence => true })

end

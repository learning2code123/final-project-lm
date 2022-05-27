# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  color_b    :integer
#  color_g    :integer
#  color_r    :integer
#  image      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#
class Photo < ApplicationRecord

  mount_uploader :image, ImageUploader

end

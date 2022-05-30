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

  

end

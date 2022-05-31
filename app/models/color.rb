# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  category   :string
#  code_b     :integer
#  code_g     :integer
#  code_r     :integer
#  color_name :string
#  hex_code   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Color < ApplicationRecord
end

# == Schema Information
#
# Table name: color_combinations
#
#  id                     :integer          not null, primary key
#  base_color_b           :integer
#  base_color_g           :integer
#  base_color_hex         :string
#  base_color_name        :string
#  base_color_r           :integer
#  combination_color_b    :integer
#  combination_color_g    :integer
#  combination_color_name :string
#  combination_color_r    :integer
#  hex_combination_color  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  category_id            :string
#
class ColorCombination < ApplicationRecord
end

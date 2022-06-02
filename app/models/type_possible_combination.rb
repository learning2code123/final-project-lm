# == Schema Information
#
# Table name: type_possible_combinations
#
#  id             :integer          not null, primary key
#  type_garment_1 :string
#  type_garment_2 :string
#  type_garment_3 :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class TypePossibleCombination < ApplicationRecord
end

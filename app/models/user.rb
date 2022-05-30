# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :integer
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:garments, {:class_name => "Photo", :foreign_key => "owner_id", :dependent => :destroy })

  has_many(:looks, { :class_name => "Look", :foreign_key => "owner_id", :dependent => :destroy })


end

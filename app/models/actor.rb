# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
  validates :name,
    presence: true,
    uniqueness: { scope: :dob, message: "with this DOB already exists" }
    
  has_many :characters
  has_many :movies, :through => characters
end

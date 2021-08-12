class Student < ApplicationRecord
  belongs_to :teacher
  has_many :studentgoals
  has_many :goals, through: :studentgoals
end

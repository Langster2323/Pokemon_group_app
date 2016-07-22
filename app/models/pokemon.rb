class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :type, presence: true
  validates :description, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :abilities, presence: true
  
end

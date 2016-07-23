class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :types, presence: true
  validates :height, presence: true
  validates :weight, presence: true

end

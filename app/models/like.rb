class Like < ApplicationRecord

  belongs_to :user
  belongs_to :pokemon, counter_cache: true
end

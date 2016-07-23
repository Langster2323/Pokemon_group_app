class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :types, presence: true
  validates :height, presence: true
  validates :weight, presence: true

  def like_count
    likes.count
  end

    def self.top
    joins("join votes on votes.dog_id = dogs.id")
    .group("dogs.id, dogs.name")
    .order("count(votes.id) desc")
    end

    # select dogs.name, count(votes.id) from dogs join votes on votes.dog_id = dogs.id group by dogs.id, dogs.name order by count(votes.id) desc;
end

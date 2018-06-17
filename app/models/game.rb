class Game < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :platforms

  scope :search_name, -> (name) {where("lower(name) LIKE ?", "%#{name.downcase}%")}
end

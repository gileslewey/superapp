class Product < ApplicationRecord
  has_many :comments
  validates :name, presence: true
#wasn't working on Heroku without public, not sure why??
public
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
  comments.average(:rating).to_f
  end


end

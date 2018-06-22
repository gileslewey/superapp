class Product < ApplicationRecord
  has_many :comments
  validates :name, presence: true
  validates :quality, presence: true
  validates :price, presence: true
  has_many :order
  has_many :comments
  validates :price, presence: true
  has_many :order
  has_many :comments

#wasn't working on Heroku without public, not sure why??
public
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
  comments.average(:rating).to_f
  end


end

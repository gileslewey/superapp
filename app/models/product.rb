class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :orders
  validates :name, presence: true
  validates :quality, presence: true
  validates :price, presence: true


public
def self.search(search_term)
  if Rails.env.development?
    Product.where('name LIKE ?', "%#{search_term}%")
  elsif Rails.env.production?
    Product.where('name ilike ?', "%#{search_term}%")
  end
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
  
  def views
    $redis.get("product:#{id}")
  end

  def viewed!
    $redis.incr("product:#{id}")
  end

end

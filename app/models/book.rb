class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, numericality: { minimum: 0, maximum: 100 }, allow_nil: true
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :checkouts
  has_many :readers, through: :checkouts
end

class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, numericality: { greater_than: 0}
    validates :description, length: {minimum: 20}
    validates :image, presence: true
    validates :category, inclusion: { in: %w(Living-Room Kitchen Bedroom Dining-Room), message: "%{value} is not a valid category" }
end



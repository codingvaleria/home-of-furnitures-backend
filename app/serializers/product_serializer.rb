class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image, :description, :price
end

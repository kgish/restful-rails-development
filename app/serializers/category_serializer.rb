class CategorySerializer < ActiveModel::Serializer
  #attributes :id
  attributes :id, :title, :sub_categories
end

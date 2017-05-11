class Notice::IndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description, :posted_at
end

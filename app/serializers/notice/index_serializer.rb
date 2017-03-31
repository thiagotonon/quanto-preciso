class Notice::IndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :posted_at
end

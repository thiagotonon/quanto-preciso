class Notice::ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description, :posted_at
end

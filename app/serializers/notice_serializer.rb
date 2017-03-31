class NoticeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :posted_at
end
